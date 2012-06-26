# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
    title "Good Fellas"
    description "Mobsters make good money"
    link "http://example.com"
    image_url "http://kalbiburger.com/wp-content/uploads/2010/06/Kalbi_Burger.jpg"
  end
end
