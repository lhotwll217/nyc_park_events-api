Rails.application.routes.draw do
  resources :notifications
get "/events", to: "events#index"
get "/paginate/:page", to: "events#paginate"
get "/filtered", to: "events#filtered"


  post "/signup", to: "users#create"
  get "/me", to: "users#show"

#Sessions Routes
  post "/login" , to: "sessions#create"
  delete "/logout" , to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#

  post "/save_event", to: "saved_events#create"
  get "/saved_events", to: "saved_events#index"
  delete "/saved_events/:id", to: "saved_events#destroy"

#Profile Routes
  post "/profile", to: "profiles#create"
  patch "/profile", to: "profiles#update"

end
