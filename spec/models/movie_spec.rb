require 'spec_helper'

describe Movie do
  let(:movie) { FactoryGirl.build(:movie) }

  describe "validations" do
    it "is valid" do
      movie.should be_valid
    end

    it "is not valid without a title" do
      movie.title = nil
      movie.should_not be_valid
    end

    it "is not valid without a description" do
      movie.description = nil
      movie.should_not be_valid
    end

    it "is not valid without a link" do
      movie.link = nil
      movie.should_not be_valid
    end

    it "has a properly formatted link" do
      movie.link = "http://google.com"
      movie.should be_valid
      movie.link = "google.com"
      movie.should_not be_valid
    end
  end

  describe "associations" do
    it "can associate with a category" do
      category = Category.new(:name => "Sample Cat")
      movie.categories << category
      movie.categories.should include(category)
    end
  end
end
