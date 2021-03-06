class RegistrationsController < Devise::RegistrationsController



  def new
    @user = User.new
    @cities = City.all
  end



  private
  def sign_up_params
    params.require(:user).permit(:name, :image, :city_id, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :image, :city_id, :email, :password, :password_confirmation)
  end
end