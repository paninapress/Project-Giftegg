class GifteesController < ApplicationController
  include SessionsHelper
  

  before_filter :signed_in_user, only: [:index, :new, :create, :show, :edit, :update]
  # before_filter :check_giftee_owner, only: [:destroy, :update, :edit]

  def index
    @giftees = Giftee.all
  end

  def new
    @giftee = Giftee.new
  end

  def create
    #adds form info
    new_giftee = params.require(:giftee).permit(:first_name, :last_name, :birthday, :relation, :notes)
    #get user to add user_id
    user = current_user
    new_giftee[:user_id] = user.id
    giftee = Giftee.create(new_giftee)

    redirect_to giftee_path(giftee)
  end

  def show
    @giftee = Giftee.find(params[:id])
  end

  def edit
    @giftee = Giftee.find(params[:id])
  end

  def update
    giftee = Giftee.find(params[:id])
    updated_info = params.require(:giftee).permit(:first_name, :last_name, :birthday, :relation, :notes)
    giftee.update_attributes(updated_info)
    
    redirect_to giftee_path(giftee)
  end
end
