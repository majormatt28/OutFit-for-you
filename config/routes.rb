Rails.application.routes.draw do
  resources :outfit_clothings
  resources :outfits
  resources :clothings, only: [:show, :index]
  resources :closets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
