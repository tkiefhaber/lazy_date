require 'spec_helper'

describe Cuisine do
  let(:cuisine) { FactoryGirl.build(:cuisine) }

  describe "validations" do
    it "is valid" do
      cuisine.should be_valid
    end

    it "is not valid without a name" do
      cuisine.name = nil
      cuisine.should_not be_valid
    end
  end

  describe "associations" do
    it "can associate with restaurants" do
      restaurant = FactoryGirl.build(:restaurant)
      cuisine.restaurants << restaurant
      cuisine.restaurants.should include(restaurant)
    end

    it "can associate with stories" do
      story = FactoryGirl.build(:story)
      cuisine.stories << story
      cuisine.stories.should include(story)
    end
  end
end
