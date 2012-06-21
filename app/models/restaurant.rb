class Restaurant < ActiveRecord::Base
  attr_accessible :delivers, :description, :link, :name, :takeout

  validates_presence_of :name, :link, :description
end
