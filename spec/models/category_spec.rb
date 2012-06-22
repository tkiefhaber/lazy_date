require 'spec_helper'

describe Category do
  let(:category){ FactoryGirl.build(:category) }

  describe "validations" do
    it "is valid" do
      category.should be_valid
    end

    it "is not valid without a name" do
      category.name = nil
      category.should_not be_valid
    end
  end

  describe "associations" do
    it "can associate with a movie" do
      movie = FactoryGirl.build(:movie)
      category.movies << movie
      category.movies.should include(movie)
    end

    it "can associate with stories" do
      story = FactoryGirl.build(:story)
      category.stories << story
      category.stories.should include(story)
    end
  end
end
