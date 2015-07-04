class NeighborhoodsController < ApplicationController

  def index
    if params[:city_id]
      @neighborhoods = Neighborhood.where(city_id: params[:city_id]).order(:name)
    else
      @neighborhoods = Neighborhood.all.order(:name)
    end

    render :json => @neighborhoods, status: 200
  end

end
