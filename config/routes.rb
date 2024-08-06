Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # READ
  get "tasks", to:"tasks#index", as: :tasks
  get "task/:id", to: "tasks#show", as: :task

  # CREATE
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  #UPDATE
  get "task/:id/edit", to: "tasks#edit", as: :edit
  patch "task/:id", to: "tasks#update"

  #DELETE
  delete "task/:id", to: "tasks#destroy"

  # Defines the root path route ("/")
  # root "posts#index"
end
