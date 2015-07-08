class VenuesController < ApplicationController

  def index

    @venues = Venue.all.order(:id)
    render :json => @venues, status: 200

  end

  def show
    @venue = Venue.find(params[:id])
  end

  def create
    @venue = Venue.new(venue_params)
      if @venue.save
        redirect_to @venue
      else
        p "NOT SAVED ERROR"
      end
  end

  private
    def venue_params
      params.require(:venue).permit(:name, :link, :address, :city, :state, :zip_code)
    end
end
