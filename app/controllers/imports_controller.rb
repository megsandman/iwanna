class ImportsController < ApplicationController

  def index
    @matches = Match.all.order(:neighborhood_id).order(:genre_id)
    render :layout => 'imports'
  end



end
