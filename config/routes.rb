Air::Application.routes.draw do
  
  get "flights/index" => 'flights#index'

  root to: 'flights#index'
  
  get '/mockup' => 'pages#home'
  get '/help' => 'pages#help', :as => :help
  
end
