# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :restaurant do
    delivers false
    takeout false
    name "MyString"
    description "MyText"
    link "MyText"
  end
end
