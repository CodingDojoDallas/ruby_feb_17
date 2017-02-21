Rails.application.routes.draw do
  root 'user#index'
  post '/login' => 'user#login_post'
  post '/user' => 'user#create'
  get '/remove/:id' => 'event#remove'
  get '/delete/:id' => 'event#delete'
  get '/join/:id' => 'event#update'
  get '/logout' => 'user#logout_post'
  resources :user 
  resources :event 
  resources :comment

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
