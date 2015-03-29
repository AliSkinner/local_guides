class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @city = City.new

    @cities = City.all

    @place = Place.new
    
    @comments = Comment.all

    @places = Place.all
    respond_to do |format|
      format.html
      format.json { render json: @places}
      # format.js
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
    @place = Place.create(place_params)
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @place }
      format.js
    end

    # respond_to do |format|
    #   if @place.save
    #     format.html { redirect_to @place, notice: 'Place was successfully created.' }
    #     format.json { render json: @place}
    #   else
    #     format.html { render :new }
    #     format.json { render json: @place.errors, status: :unprocessable_entity }
    #   end
    # redirect_to action: :index

    # end

  end


  private

  def place_params
    params.require(:place).permit(:title, :description,:address, :image, :lng, :lat, :user_id)
  end

end