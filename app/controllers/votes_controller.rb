
class VotesController < ApplicationController

  # GET /votes/new
  # GET /votes/new.xml
  def new
    @vote = Vote.new
    @story = Story.find_by_id(params[:id])
  end

  def create
    @vote = Vote.new(params[:vote])
    @story = Story.find_by_id(params[:vote][:story_id])
    # if @vote.save!
      
    # else
      
    # end
  end

  def index
  end
end