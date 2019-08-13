Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'title', to: 'tasks#title', as :title

  get    "tasks/new",      to: "tasks#new", as: :tasknew
  post   "tasks",          to: "tasks#create"

  # NB: The `show` route needs to be *after* `new` route.
  get 'tasks', to: 'tasks#index'
  root to: 'pages#home'
  get 'tasks/:id', to: 'tasks#show', as: :task

  get    "tasks/:id/edit", to: "tasks#edit", as: :taskedit # => form
  patch  "tasks/:id",      to: "tasks#update" # => sends inputs

  delete "tasks/:id",      to: "tasks#destroy", as: :delete
end
