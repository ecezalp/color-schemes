class RegistrationsController < ApplicationController
  before_action :authenticate_user, only: [:show, :edit, :update]
  
  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :avatar, :password, :first_name, :last_name)
  end
end