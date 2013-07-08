Fandangr::Application.routes.draw do
  match "signup" => 'users#new', :as => "signup"

  resources :users
  resources :showtimes
  resources :tickets
  resources :movies

  root :to => "movies#index"
end
