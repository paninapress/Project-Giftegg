class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    new_user = params.require(:user).permit(:name, :email, :phone, :birthday)
    user = User.create(new_user)
    redirect_to user_path(user)
  end

  def show
  end
end
