Rails.application.routes.draw do
  # resources :homes
  root "homes#index"
  devise_for :users, :controllers => {:registrations => "users/registrations"}

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :projects do
  # 	resources :task
  # end
   get 'projects/new', as: :new_project
   post 'projects/create', as: :create_projects
   get 'projects/show', as: :projects, to: 'projects#show'
   get 'projects', as: :project, to: 'projects#index'
   get '/projects/:project_id/task/new', as: :new_project_task, to: 'task#new'
   post '/projects/:project_id/task', as: :create_task, to: 'task#create'
   get '/projects/:project_id/task/show', as: :projects_task, to: 'task#show'
   get '/projects/:project_id/task', as: :project_task_index, to: 'task#index'


    # post '/delete_collaborator', to: 'projects#delete_collaborator'

    # resources :comments, :notes, shallow: true

  #   resources :tasks, shallow: true do 
  #     get :complete, on: :collection, to: "tasks#complete"
  #     get :overdue, on: :collection, to: "tasks#overdue"
    
  # end
end
