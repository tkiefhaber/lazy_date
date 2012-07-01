
class VotesController < ApplicationController

  # GET /votes/new
  # GET /votes/new.xml
  def new
    @vote = Vote.new
    @story = Story.find_by_id(params[:id])
    respond_to do |format|
      format.html
      format.xml  { render :xml => @vote }
    end
  end

  def create
    @vote = Vote.new(params[:vote])
    @story = Story.find_by_id(params[:vote][:story_id])
    if @vote.save!
      #respond_with(@vote)
      #redirect_to story_path(@story)
    else
      #render :new
    end
  end

  def index
  end
end