Rails.application.routes.draw do
  resources :characters
  resources :turns
  resources :games

  root 'static_pages#home'

  get '/attack/:game_id/:turn_id/:attacker_id/:victim_id', to: 'characters#attack', as: 'attack'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
