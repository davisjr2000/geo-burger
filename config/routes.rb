Rails.application.routes.draw do

  #ROOT

  root to: 'pages#home'

  #DEVISE

  devise_for :users

  #BURGER PLACES

  resources :burger_places, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
