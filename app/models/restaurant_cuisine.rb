class RestaurantCuisine < ActiveRecord::Base
  attr_accessible :cuisine, :restaurant, :restaurant_id, :cuisine_id

  belongs_to :restaurant
  belongs_to :cuisine

  validates_presence_of :restaurant, :cuisine
  validates_associated  :restaurant, :cuisine
end
