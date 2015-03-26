class CitiesController < ApplicationController

  # def index
  #   @cities = City.all
  # end



  private 
  def city_params
    params.require(:city).permit(:name)
  end

end