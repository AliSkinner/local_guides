class Place < ActiveRecord::Base

  belongs_to :user
  belongs_to :city
  has_many :comments
  
  mount_uploader :image, PlaceImageUploader
  
  reverse_geocoded_by :lat, :lng
  after_validation :reverse_geocode  
  
  def self.place_near_user_city?(user, lat, lng)
  Geocoder::Calculations.distance_between([user.city.latitude,user.city.longitude], [lat,lng]).to_i <= 50
  end
 

end
