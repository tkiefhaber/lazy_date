class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :movie_categories
  has_many :movies, :through => :movie_categories
  has_many :stories

  validates_presence_of :name

end
