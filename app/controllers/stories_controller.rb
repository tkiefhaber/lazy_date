class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @movie = @story.get_movie
    @restaurant = @story.get_restaurant
    @vote = Vote.new(params[:vote])
  end

  def index
    @stories = Story.find(:all, :order => "(votes_count) DESC")
  end

  def new
  	@story = Story.new
  	@cuisines = Cuisine.all
  	@categories = Category.all
  end

  def create
    @story = Story.new(params["story"])
    if @story.save
      redirect_to stories_path
    else
      render :new
    end
  end
end