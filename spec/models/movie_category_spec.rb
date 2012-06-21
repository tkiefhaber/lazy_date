require 'spec_helper'

describe MovieCategory do
  let(:movie_category) do
    MovieCategory.create( :movie => Movie.new,
                          :category => Category.new )
  end

  it "is valid" do
    movie_category.should be_valid
  end

  it "is not valid without a movie" do
    movie_category.movie = nil
    movie_category.should_not be_valid
  end

  it "is not valid without a category" do
    movie_category.category = nil
    movie_category.should_not be_valid
  end

  it "has a movie" do
    movie_category.movie.should be
  end

  it "has a category" do
    movie_category.category.should be
  end
end
