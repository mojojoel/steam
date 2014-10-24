class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :name
      t.string :quality
      t.text :desc
      t.text :picture
      t.string :game
      t.float :price
      t.integer :user_id
      t.boolean :approved, default: "false"

      t.timestamps
    end
  end
end
