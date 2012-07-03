# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :story do
    cuisine
    category
    sequence(:name) { |n| "Story#{n}" }
    description "Sample Description"
    image_url "http://ec.europa.eu/information_society/activities/egovernment/images/project_logos/sample.jpg"
  end
end
