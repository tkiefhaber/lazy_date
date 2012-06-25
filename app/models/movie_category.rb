class MovieCategory < ActiveRecord::Base
  attr_accessible :category, :movie, :movie_id, :category_id
  belongs_to :movie
  belongs_to :category

  validates_presence_of :category, :movie
end
