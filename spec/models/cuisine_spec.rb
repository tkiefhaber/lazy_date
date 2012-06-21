require 'spec_helper'

describe Cuisine do
  let(:cuisine) { FactoryGirl.create(:cuisine) }

  it "is valid" do
    cuisine.should be_valid
  end

  it "is not valid without a name" do
    cuisine.name = nil
    cuisine.should_not be_valid
  end

  it "has restaurants" do
    cuisine.restaurants.should be_kind_of(Enumerable)
  end

  it "can associate with restaurants" do
    restaurant = FactoryGirl.create(:restaurant)
    cuisine.restaurants << restaurant
    cuisine.restaurants.should include(restaurant)
  end

  it "can associate with stories" do
    story = FactoryGirl.create(:story)
    cuisine.stories << story
    cuisine.stories.should include(story)
  end
end
