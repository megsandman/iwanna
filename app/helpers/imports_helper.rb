module ImportsHelper

  def get_venue(venue_id)
    Venue.find(venue_id)
  end

end
