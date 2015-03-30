class CitiesController < ApplicationController

  def index
    @cities = City.all.includes(:users)
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

  def show
    @city = City.find(params[:id])
    respond_to do |format|
      format.json { render json: @city, include: 
        { users: { include: [{ places: { include: :comments } }, :reviews] }
      }
    }
  end
end

  

  private 
  def city_params
    params.require(:city).permit(:name, :lat, :lng)
  end

end