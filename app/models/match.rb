class Match < ActiveRecord::Base

  belongs_to :neighborhood
  belongs_to :genre
  belongs_to :venue
  belongs_to :activity, through: :genres
  belongs_to :city, through: :neighborhoods

end
