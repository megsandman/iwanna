class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all.order(:id)
    render json: @activities, status: 200
  end
end
