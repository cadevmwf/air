Air::Application.routes.draw do
  
  get "sessions/new"
  post "sessions/create"
  get "sessions/destroy"

  resources :users

  get "flights/index" => 'flights#index'

  root to: 'flights#index'
  
  get '/mockup' => 'pages#home'
  get '/help' => 'pages#help', :as => :help
  
end
