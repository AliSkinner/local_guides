class City < ActiveRecord::Base

  has_many :users
  has_many :places, through: :users
  
end
