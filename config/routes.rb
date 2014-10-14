Rails.application.routes.draw do

  root 'static_pages#about'
  get 'oauth/receiver' => 'static_pages#receiver'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
end
