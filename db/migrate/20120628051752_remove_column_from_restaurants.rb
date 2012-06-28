class RemoveColumnFromRestaurants < ActiveRecord::Migration
  def up
    remove_column :restaurants, :cuisine
  end

  def down
    add_column :restaurants, :cuisine, :string
  end
end
