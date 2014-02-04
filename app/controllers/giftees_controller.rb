class GifteesController < ApplicationController
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
  end
end
