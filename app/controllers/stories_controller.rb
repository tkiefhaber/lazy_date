class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @movie = @story.get_movie
    @restaurant = @story.get_restaurant
  end

  def index
    @stories = Story.all
  end

end