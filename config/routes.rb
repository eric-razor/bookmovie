Rails.application.routes.draw do
  # root 'application#home'
  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # post '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resource :users
#established a route to a user sign up page
#TO DO:
#Save user credentials/ give them a show page
#Figure out API for good reads



end
