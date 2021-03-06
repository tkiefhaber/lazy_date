# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    delivers false
    takeout true
    sequence(:name) { |n| "Granny's Creamy Whip#{n}" }
    description "This place is super tasty"
    link "http://google.com"
    image_url "http://kalbiburger.com/wp-content/uploads/2010/06/Kalbi_Burger.jpg"
  end
end
