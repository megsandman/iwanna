class Genre < ActiveRecord::Base

  belongs_to :activity
  has_many :matches

end
