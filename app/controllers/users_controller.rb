class UsersController < ApplicationController 

  def index
    @users = User.all.includes(:places)
    respond_to do |format|
      format.html
      format.json { render json: @users}
    # format.js
  end
end


end