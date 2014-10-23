class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :quality
      t.text :desc
      t.text :picture
      t.string :game
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end
