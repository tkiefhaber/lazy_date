class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.boolean :delivers, :default => false
      t.boolean :takeout, :default => true
      t.string :name
      t.text :description
      t.text :link

      t.timestamps
    end
  end
end
