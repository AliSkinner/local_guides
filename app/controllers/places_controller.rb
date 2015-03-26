class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    @places = Place.all
    respond_to do |format|
      format.html
      format.json { render json: @places}
    end
  end

  def new
    @place = Place.new
  end


  def create
    @place = Place.new(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created.' }
        format.json { render json: @place}
      else
        format.html { render :new }
        format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def place_params
    params.require(:place).permit(:title, :description,:address, :image, :lng, :lat, :user_id)
  end

end