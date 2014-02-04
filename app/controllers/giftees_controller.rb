class GifteesController < ApplicationController

  def index
    @giftees = Giftee.all
  end

  def new
    @giftee = Giftee.new
  end

  def create
    new_giftee = params.require(:giftee).permit(:first_name, :last_name, :birthday, :relation, :notes)
    giftee = Giftee.create(new_giftee)
    redirect_to giftee_path(giftee)
  end

  def show
    @giftee = Giftee.find(params[:id])
    #Show who added this giftee
    users = User.all
    @user = users.find(@giftee.user_id)
  end
end
