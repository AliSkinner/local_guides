class CitiesController < ApplicationController


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