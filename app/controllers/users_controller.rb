class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    new_user = params.require(:user).permit(:first_name, :last_name, :email, :phone, :birthday)
    user = User.create(new_user)
    redirect_to user_path(user)
  end

  def show
    @user = User.find(params[:id])
  end
end
