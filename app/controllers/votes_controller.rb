
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
    if @vote.save
      redirect_to stories_path
    else
      render :new
    end
  end
end