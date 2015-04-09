class UsersController < ApplicationController 

  def index
    @users = User.all.includes(:places)
    respond_to do |format|
      format.html
      format.json { render json: @users}
    # format.js
    end
  end

  def show
    user = User.find(params[:id])
    respond_to do |format|
      format.json { render json: user, include: [:places, :reviews] } 
    end
  end


end