class Story < ActiveRecord::Base
  attr_accessible :category_id, :cuisine_id

  belongs_to :cuisine
  belongs_to :category

  validates_presence_of :cuisine, :category
end
