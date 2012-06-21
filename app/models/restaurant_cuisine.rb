class RestaurantCuisine < ActiveRecord::Base
  attr_accessible :cuisine, :restaurant

  belongs_to :restaurant
  belongs_to :cuisine

  validates_presence_of :restaurant, :cuisine
end
