Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :dog
  # get '/test' => 'dog#show'

  # ^^^ That does this vvv
  # get '/dog/' => 'dog#index' #3
  # get '/dog/:id' => 'dog#show' #4
  # get '/dog/new' => 'dog#new' #1
  # get '/dog/:id/edit' => 'dog#edit' #2
  # post '/dog/' => 'dog#create' #5
  # patch '/dog/:id' => 'dog#update' #6
  # delete '/dog/:id' => 'dog#destroy' #7


end


# 1. page to create a resource
# 2. page to update a resource
# 3. page that lists some resources
# 4. page that shows one resource

# 5. route for handling create post
# 6. route for handling update post
# 7. route for handling delete post

