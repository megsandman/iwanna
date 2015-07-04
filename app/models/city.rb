class City < ActiveRecord::Base

  has_many :neighborhoods
  # has_many :matches, through: :neighborhoods

end
