class Restaurant < ActiveRecord::Base
  attr_accessible :delivers, :description, :link, :name, :takeout

  has_many :restaurant_cuisines
  has_many :cuisines, :through => :restaurant_cuisines

  validates_presence_of :name, :link, :description
  validates_format_of :link, :with => /^(http|https):\/\//

end
