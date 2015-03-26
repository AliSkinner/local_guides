class City < ActiveRecord::Base

  has_many :users
  has_many :places, through: :users
  

  geocoded_by :name
  after_validation :geocode

end
