class CreateGiftees < ActiveRecord::Migration
  def change
    create_table :giftees do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :relation
      t.string :notes

      t.timestamps
    end
  end
end
