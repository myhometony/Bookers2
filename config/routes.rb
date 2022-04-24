Rails.application.routes.draw do
  get "home/about", to: "homes#about", as: :about
  root to: 'homes#top'
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
