# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cuisine do
    sequence(:name) { |n| "FroYo#{n}" }
  end
end
