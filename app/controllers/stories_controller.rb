class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @movie = Movie.last
    @restaurant = Restaurant.first
  end

end