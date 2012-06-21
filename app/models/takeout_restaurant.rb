class TakeoutRestaurant < ActiveRecord::Base
  attr_accessible :address, :category, :description, :name, :phone
end
