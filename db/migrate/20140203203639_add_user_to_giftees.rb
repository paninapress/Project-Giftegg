class AddUserToGiftees < ActiveRecord::Migration
  def change
    add_reference :giftees, :user, index: true
  end
end
