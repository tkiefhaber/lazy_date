require 'spec_helper'

describe Story do
  describe "validations" do
    let(:story){ FactoryGirl.build(:story) }

    it "is valid" do
      story.should be_valid
    end

    it "is not valid without a cuisine" do
      story.cuisine = nil
      story.should_not be_valid
    end

    it "is not valid without a category" do
      story.category = nil
      story.should_not be_valid
    end

    it "is not valid without a name" do
      story.name = nil
      story.should_not be_valid
    end

    it "is not valid without a description" do
      story.description = nil
      story.should_not be_valid
    end

    it "is not valid without an image_url" do
      story.image_url = nil
      story.should_not be_valid
    end

    it "has a properly formatted image_url" do
      story.image_url = "http://images.google.com/burger.jpg"
      story.should be_valid
      story.image_url = "image.com/burger.jpg"
      story.should_not be_valid
      story.image_url = "http://images.google.com/burger.html"
      story.should_not be_valid
    end
  end

  describe "getting a movie" do
    let!(:story)     { FactoryGirl.build(:story) }
    let!(:category)  { FactoryGirl.build(:category) }
    let!(:movie)     { FactoryGirl.build(:movie) }

    it "provides a movie from the specified category" do
      story.category = category
      category.movies << movie
      story.get_movie.should == movie
    end
  end

  describe "getting a restaurant" do
    let!(:story)      { FactoryGirl.build(:story) }
    let!(:cuisine)    { FactoryGirl.build(:cuisine) }
    let!(:restaurant) { FactoryGirl.build(:restaurant) }

    it "provides a restaurant from the specified cuisine" do
      story.cuisine = cuisine
      cuisine.restaurants << restaurant
      story.get_restaurant.should == restaurant
    end
  end
end
