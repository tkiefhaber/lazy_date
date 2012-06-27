class Cuisine < ActiveRecord::Base
  attr_accessible :name

  has_many :restaurant_cuisines
  has_many :restaurants, :through => :restaurant_cuisines
  has_many :stories

  validates_presence_of :name


  def find_restaurant
    restaurants.sample
  end

  
end
