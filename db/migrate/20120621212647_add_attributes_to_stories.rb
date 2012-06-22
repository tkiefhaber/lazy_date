class AddAttributesToStories < ActiveRecord::Migration
  def change
    add_column :stories, :name, :string
    add_column :stories, :description, :text
    add_column :stories, :image_url, :text
  end
end
