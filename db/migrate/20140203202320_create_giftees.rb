class CreateGiftees < ActiveRecord::Migration
  def change
    create_table :giftees do |t|
      t.string :name
      t.date :birthday
      t.string :relation
      t.string :notes

      t.timestamps
    end
  end
end
