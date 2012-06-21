class CreateTakeoutRestaurants < ActiveRecord::Migration
  def change
    create_table :takeout_restaurants do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.string :address
      t.string :category

      t.timestamps
    end
  end
end
