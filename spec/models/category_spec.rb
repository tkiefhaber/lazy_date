require 'spec_helper'

describe Category do
  let(:category){ FactoryGirl.create(:category) }

  it "is valid" do
    category.should be_valid
  end

  it "is not valid without a name" do
    category.name = nil
    category.should_not be_valid
  end

  it "has a name" do
    category.should respond_to(:name)
  end

  it "has associate movies" do
    category.movies.should be_kind_of(Enumerable)
  end

  it "can associate with a movie" do
    movie = FactoryGirl.create(:movie)
    category.movies << movie
    category.movies.should include(movie)
  end
end
