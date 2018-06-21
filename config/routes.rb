Rails.application.routes.draw do
  # devise_for :users
  # root 'application#home'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users
  resources :franchises
  resources :works do
    member do
      post 'like' => 'works#upvote'
      post 'unlike' => 'works#downvote'
    end
  end
#established a route to a user sign up page
#TO DO:
#Save user credentials/ give them a show page
#Figure out API for good reads

end
