Rails.application.routes.draw do
  resources :saved_events


  post "/signup", to: "users#create"
  get "/me", to: "users#show"

#Sessions Routes
  post "/login" , to: "sessions#create"
  delete "/logout" , to: "sessions#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#

  post "/save_event", to: "saved_events#create"
  get "/saved_events", to: "saved_events#index"

end
