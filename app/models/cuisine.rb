class Cuisine < ActiveRecord::Base
  attr_accessible :name

  has_many :restaurant_cuisines
  has_many :restaurants, :through => :restaurant_cuisines

  validates_presence_of :name
end
