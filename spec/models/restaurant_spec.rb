require 'spec_helper'

describe Restaurant do
  let(:restaurant) { FactoryGirl.build(:restaurant) }

  describe "validations" do
    it "is valid" do
      restaurant.should be_valid
    end

    %w(name description link image_url).each do |attribute|
      it "is not valid without #{attribute}" do
        setter = (attribute + "=").to_sym
        restaurant.send(setter, nil)
        restaurant.should_not be_valid
      end
    end

    it "has a properly formatted link" do
      restaurant.link = "http://google.com"
      restaurant.should be_valid
      restaurant.link = "bloggle.goggle"
      restaurant.should_not be_valid
    end


    it "has a properly formatted image_url" do
      restaurant.image_url = "http://images.google.com/burger.jpg"
      restaurant.should be_valid
      restaurant.image_url = "image.com/burger.jpg"
      restaurant.should_not be_valid
      restaurant.image_url = "http://images.google.com/burger.html"
      restaurant.should_not be_valid
    end
  end

  describe "initialization" do
    it "does not deliver by default" do
      Restaurant.new.delivers.should_not be
    end

    it "allows takeout by default" do
      Restaurant.new.takeout.should be
    end
  end

  describe "associations" do
    it "can associate with cuisines" do
      cuisine = FactoryGirl.build(:cuisine)
      restaurant.cuisines << cuisine
      restaurant.cuisines.should include(cuisine)
    end
  end

end
