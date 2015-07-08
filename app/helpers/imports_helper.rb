module ImportsHelper

  def get_venue(venue_id)
    Venue.find(venue_id)
  end

  def get_neighborhood(venue_id)
    Neighborhood.find(venue_id)
  end

  def get_genre(venue_id)
    Genre.find(venue_id)
  end

end
