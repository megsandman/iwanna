class VenuesController < ApplicationController

  def index

    @venues = Venue.all.order(:id)
    render :json => @venues, status: 200

  end
end
