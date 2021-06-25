Rails.application.routes.draw do
  resources :room_items
  resources :items
  resources :rooms
  resources :buildings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'buildings#index'
end
