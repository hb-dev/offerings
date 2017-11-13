Rails.application.routes.draw do
  resources :offerings
  resources :stops
  resources :routes
  resources :ports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
