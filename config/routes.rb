LazyDate::Application.routes.draw do
  resources :votes

  get "home/index"

 root :to => "home#index"

 resources :stories

end
