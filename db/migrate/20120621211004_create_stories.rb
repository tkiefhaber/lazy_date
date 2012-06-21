class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :cuisine_id
      t.integer :category_id

      t.timestamps
    end
  end
end
