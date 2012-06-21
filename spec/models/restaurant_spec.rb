require 'spec_helper'

describe Restaurant do
  let(:restaurant) { FactoryGirl.create(:restaurant) }

  it "is valid" do
    restaurant.should be_valid
  end

  %w(name description link).each do |attribute|
    it "is not valid without #{attribute}" do
      setter = (attribute + "=").to_sym
      restaurant.send(setter, nil)
      restaurant.should_not be_valid
    end
  end

  it "does not deliver by default" do
    Restaurant.new.delivers.should_not be
  end

  it "allows takeout by default" do
    Restaurant.new.takeout.should be
  end
end
