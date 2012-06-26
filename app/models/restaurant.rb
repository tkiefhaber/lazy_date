class Restaurant < ActiveRecord::Base
  attr_accessible :delivers, :description, :link, :name, :takeout, :image_url

  has_many :restaurant_cuisines
  has_many :cuisines, :through => :restaurant_cuisines

  validates_presence_of :name, :link, :description, :image_url
  validates_format_of :link, :with => /^(http|https):\/\//
  validates_format_of :image_url, :with => /^(http|https):\/\//
  validates_format_of :image_url, :with => /\.(jpg|gif|jpeg|png)$/


end
