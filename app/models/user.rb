class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :city
  has_many :places
  has_many :comments, through: :places
  has_and_belongs_to_many :reviews
  has_many :messages
  

 
  
end
