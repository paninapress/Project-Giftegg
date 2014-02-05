class GifteesController < ApplicationController
  include SessionsHelper
  

  before_filter :signed_in_user, only: [:index, :new, :create, :show, :edit, :update]
  before_filter :check_giftee_owner, only: [:destroy, :update, :edit]

  def index
    @giftees = Giftee.all
  end

  def new
    @giftee = Giftee.new
  end

  def create
    new_giftee = params.require(:giftee).permit(:first_name, :last_name, :birthday, :relation, :notes, :user_id => :signed_in_user)
    giftee = Giftee.create(new_giftee)
    redirect_to giftee_path(giftee)
  end

  def show
    @giftee = Giftee.find(params[:id])
  end
end
