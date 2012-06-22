require 'spec_helper'

describe MovieCategory do
  let(:movie_category) do
    MovieCategory.new( :movie => Movie.new,
                       :category => Category.new )
  end

  describe "validations" do
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
  end

end
