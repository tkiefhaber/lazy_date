require 'spec_helper'

describe RestaurantCuisine do
  let(:restaurant_cuisine) do
    RestaurantCuisine.create( :restaurant => Restaurant.new,
                              :cuisine => Cuisine.new )
  end

  it "is valid" do
    restaurant_cuisine.should be_valid
  end

  it "is not valid without a restaurant" do
    restaurant_cuisine.restaurant = nil
    restaurant_cuisine.should_not be_valid
  end

  it "is not valid without a cuisine" do
    restaurant_cuisine.cuisine = nil
    restaurant_cuisine.should_not be_valid
  end

end
