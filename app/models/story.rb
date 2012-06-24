class Story < ActiveRecord::Base
  attr_accessible :category_id, :cuisine_id

  belongs_to :cuisine
  belongs_to :category

  validates_presence_of :cuisine, :category, :name, :description, :image_url

  validates_format_of :image_url, :with => /^(http|https):\/\//
  validates_format_of :image_url, :with => /\.(jpg|gif|jpeg|png)$/

  def get_movie
    Movie.find_by_category(category)
  end

  def get_restaurant
    Restaurant.find_by_cuisine(cuisine)
  end
end
