require 'spec_helper'

describe RestaurantCuisine do
  describe "validations" do

    let(:restaurant_cuisine) { RestaurantCuisine.new }

    context "when given a valid restaurant and cuisine" do
      it "is valid" do
        restaurant = FactoryGirl.build(:restaurant)
        cuisine    = FactoryGirl.build(:cuisine)
        restaurant_cuisine = RestaurantCuisine.new( :restaurant => restaurant,
                                                    :cuisine    => cuisine )
        restaurant_cuisine.should be_valid
      end
    end

    it "is not valid without a restaurant" do
      restaurant_cuisine.should have(1).error_on(:restaurant)
    end

    it "is not valid without a valid restaurant" do
      restaurant_cuisine.restaurant = Restaurant.new
      restaurant_cuisine.should have(1).error_on(:restaurant)
    end

    it "is not valid without a cuisine" do
      restaurant_cuisine.should have(1).error_on(:cuisine)
    end

    it "is not valid without a valid cuisine" do
      restaurant_cuisine.cuisine = Cuisine.new
      restaurant_cuisine.should have(1).error_on(:cuisine)
    end
  end
end
