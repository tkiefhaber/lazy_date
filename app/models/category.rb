class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :movie_categories
  has_many :movies, :through => :movie_categories

  validates_presence_of :name

end
