class MatchesController < ApplicationController

  def index
    @matches = Match.all.order(:id)
    render :json => @matches, status: 200
  end

  def show
    if params["genre"] && params["neighborhood"]
      requested_genre_id = params["genre"]
      requested_neighborhood_id = params["neighborhood"]

      @matches = Match.where("neighborhood_id = ? AND genre_id = ?", requested_neighborhood_id, requested_genre_id)
      p "MATCHES: #{@matches}"

      if @matches.length == 0
        match_to_send = {name: "Hmmm we haven't found a good option there yet", link: "https://www.google.com/", id: 0}
      elsif @matches.length > 1
        random_index = rand(@matches.length)
        match_to_send = @matches[random_index]
      else
        match_to_send = @matches.first
      end

      p "MATCH TO SEND"
      p match_to_send
      if match_to_send[:id] == 0
        render json: match_to_send, status: 200
      else
        venue_to_send = Venue.find(match_to_send.venue_id)
        render json: venue_to_send, status: 200
      end
    else
      p "NO GENRE OR NEIGHBORHOOD"
    end
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to '/imports'
    else
      render 'new'
    end
  end

  def update
    @match = Match.find(params[:id])
    if @match.update(match_params)
      if @match.save
        redirect_to '/imports'
      else
        p "DIDN'T SAVE"
      end
    else
      p "DIDN'T UPDATE"
    end
  end

  private

    def match_params
      params.require(:match).permit(:venue_id, :neighborhood_id, :genre_id)
    end

end
