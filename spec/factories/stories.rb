# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    cuisine
    category
    name "Sample Story"
    description "Sample Description"
    image_url "http://images.google.com/burger.jpg"
  end
end
