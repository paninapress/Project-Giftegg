class UsersController < ApplicationController
   
  def new
    @user = User.new
  end

  def create
    new_user = params.require(:user).permit(:first_name, :last_name, :email, :phone, :birthday, :password, :password_confirmation)
    @user = User.new(new_user)
      if @user.save
        flash[:success] = "Thank you for joining GiftEgg!"
        sign_in @user
        redirect_to @user
      else
        render'new'
      end
  end
  
  def show
    @user = User.find(current_user)
  end
end

#remember to add update