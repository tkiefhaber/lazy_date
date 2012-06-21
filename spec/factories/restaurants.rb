# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    delivers false
    takeout true
    name "Sample Restaurant"
    description "This place is super tasty"
    link "http://google.com"
  end
end
