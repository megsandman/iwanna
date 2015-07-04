class GenresController < ApplicationController

  def index
    if params[:activity_id]
      @genres = Genre.where(activity_id: params[:activity_id]).order(:name)
    else
      @genres = Genre.all.order(:name)
    end

    render :json => @genres, status: 200
  end

end

