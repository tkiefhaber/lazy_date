# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
    title "Sample Title"
    description "Sample Description"
    link "http://example.com"
  end
end
