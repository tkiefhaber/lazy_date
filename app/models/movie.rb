class Movie < ActiveRecord::Base
  attr_accessible :description, :link, :title, :image_url
  has_many :movie_categories
  has_many :categories, :through => :movie_categories

  validates_presence_of :title, :description, :link, :image_url
  validates_format_of :link, :with => /^(http|https):\/\//
  validates_format_of :image_url, :with => /^(http|https):\/\//
  validates_format_of :image_url, :with => /\.(jpg|gif|jpeg|png)$/


end
