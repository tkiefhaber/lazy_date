class Story < ActiveRecord::Base
  attr_accessible :category_id, :cuisine_id, :name, :description, :image_url

  belongs_to :cuisine
  belongs_to :category
  has_many :votes

  validates_presence_of :cuisine, :category, :name, :description, :image_url

  validates_format_of :image_url, :with => /^(http|https):\/\//
  validates_format_of :image_url, :with => /\.(jpg|gif|jpeg|png)$/

  def get_movie
    category.find_movie
  end

  def get_restaurant
    cuisine.find_restaurant
  end
end
