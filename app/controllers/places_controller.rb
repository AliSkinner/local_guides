class PlacesController < ApplicationController
  before_action :authenticate_user!


  def index
    @city = City.new

    @cities = City.all

    @place = Place.new
    
    @comments = Comment.all

    # @places = Place.includes(:comments).all
    @places = Place.all
    respond_to do |format|
      format.html
      format.json { render json: @places }
      # format.js
    end

  end
  # { only: [:body, :user_id, :place_id] } 
  def show
    place = Place.find(params[:id])
    respond_to do |format|
      format.json { render json: place, include: 
        { comments: 
          { include: :user } 
        }
      } 
    end
  end

  def new
    @place = Place.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @place }
      format.js
    end

  end

  
  def create
    # binding.pry
    if Place.place_near_user_city?(current_user, params[:place][:lat],params[:place][:lng])

      @place = Place.create(place_params)
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @place }
        format.js
      end
    end
  end


  private

  def place_params
    params.require(:place).permit(:title, :description,:address, :image, :lng, :lat, :user_id)
  end

end