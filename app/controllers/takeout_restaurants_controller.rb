
class TakeoutRestaurantsController < ApplicationController
  def index
    @takeout_restaurants = TakeoutRestaurant.all
  end
end
