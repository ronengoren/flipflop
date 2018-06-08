Rails.application.routes.draw do

root 'homepage#index'
devise_for :users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :matchings
resources :users, only: [:index, :show]
resources :personal_messages, only: [:new, :create]
resources :conversations, only: [:index, :show]
resources :homepage
resources :flipflop
post 'create_location' => 'flipflop#create'

resources :profiles
# get '/profile', :to => "profile#show"





end
