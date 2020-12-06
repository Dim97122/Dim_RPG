Rails.application.routes.draw do
  resources :characters
  resources :turns
  resources :games

  root 'static_pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
