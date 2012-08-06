Air::Application.routes.draw do
  
  root to: 'pages#home'
  
  get '/help' => 'pages#help', :as => :help
  
end
