class Activity < ActiveRecord::Base

  has_many :genres
  # has_many :matches, through: :genres

end
