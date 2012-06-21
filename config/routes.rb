LazyDate::Application.routes.draw do
 root :to => "delivery_restaurants#index"

 match "/auth/:provider/callback" => "sessions#create"

 resources :delivery_restaurants
 resources :takeout_restaurants
end
