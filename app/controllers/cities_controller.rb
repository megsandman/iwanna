class CitiesController < ApplicationController

  require 'json'

  def index
    @cities = City.all.order(:id)
    render :json => @cities, status: 200
  end

end
