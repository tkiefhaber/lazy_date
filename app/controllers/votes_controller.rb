
class VotesController < ApplicationController
 
  # GET /votes/new
  # GET /votes/new.xml
  def new
    @vote = Vote.new
 
    respond_to do |format|
      format.html
      format.xml  { render :xml => @vote }
    end
  end

  def create
    @vote = Vote.new(params[:vote])
    item = params[:vote][:item_id]
    uid = params[:vote][:user_id]
    @extant = Vote.find(:last, :conditions => ["item_id = ? AND user_id = ?", item, uid])
    last_vote_time = @extant.created_at unless @extant.blank?
    curr_time = Time.now
 
    if ((@extant && curr_time - last_vote_time >= 24.hours) || @extant.blank?)
      respond_to do |format|
        if @vote.save
          format.js
          format.html { redirect_to :back }
        else
          format.html { redirect_to items_path }
          format.xml  { render :xml => @vote.errors, :status => :unprocessable_entity }
        end
      end
    else
      render :js =>  "alert('You may vote once every 24 hours for any one item.');"
    end
  end
end