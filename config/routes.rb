Rails.application.routes.draw do
  # resources :homes
  root "homes#index"
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects
    # post '/delete_collaborator', to: 'projects#delete_collaborator'

    # resources :comments, :notes, shallow: true

  #   resources :tasks, shallow: true do 
  #     get :complete, on: :collection, to: "tasks#complete"
  #     get :overdue, on: :collection, to: "tasks#overdue"
    
  # end
end
