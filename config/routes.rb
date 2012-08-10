Air::Application.routes.draw do
  
  resources :reservations

  get "sessions/new", :as => :signin
  post "sessions/create"
  get "sessions/destroy", :as => :signout

  resources :users

  get "flights/index" => 'flights#index'

  root to: 'flights#index'
  
  get '/mockup' => 'pages#home'
  get '/help' => 'pages#help', :as => :help
  
end
