Rails.application.routes.draw do
  # devise_for :users
  root 'franchises#index' #goes directly to franchises
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users
  resources :franchises do
    resources :works do  #should be routed properly
      put 'like' => 'works#upvote'
      put 'unlike' => 'works#downvote'
    end
  end

#established a route to a user sign up page
#TO DO:
#Save user credentials/ give them a show page
#Figure out API for good reads

end
