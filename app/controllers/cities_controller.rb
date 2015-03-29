class CitiesController < ApplicationController

  def index
    @cities = City.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cities }
      format.js
    end
  end

  def new
    @city = City.new
  end

  def create
    @city = City.create(city_params)
    redirect_to root_path
  end


  private 
  def city_params
    params.require(:city).permit(:name, :lat, :lng)
  end

end