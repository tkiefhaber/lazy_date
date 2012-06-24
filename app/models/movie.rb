class Movie < ActiveRecord::Base
  attr_accessible :description, :link, :title
  has_many :movie_categories
  has_many :categories, :through => :movie_categories

  validates_presence_of :title, :description, :link
  validates_format_of :link, :with => /^(http|https):\/\//

  def self.find_by_category(category)
    category.random_movie
  end

end
