class Place < ActiveRecord::Base

  belongs_to :user
  belongs_to :city
  has_many :comments
  
  mount_uploader :image, PlaceImageUploader
  
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode  
  

end
