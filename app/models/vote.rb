class Vote < ActiveRecord::Base
  attr_accessible :story_id
  belongs_to :story, :counter_cache => true
end
