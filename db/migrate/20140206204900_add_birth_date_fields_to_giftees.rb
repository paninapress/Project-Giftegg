class AddBirthDateFieldsToGiftees < ActiveRecord::Migration
  def change
    add_column :giftees, :birth_day, :integer
    add_column :giftees, :birth_month, :integer
  end
end
