Rails.application.routes.draw do
  # get 'todo/index'

  # get 'todo/new'

  # get 'todo/show'

  # get 'todo/edit'

  # get 'todo_list/index'

  # get 'todo_list/new'

  get 'todo_list/:id', to: 'todo_list#show', as: 'show_list'

  # get 'todo_list/edit'



  # get 'tasks/index'

  # get 'tasks/show'

  # get 'tasks/new'

  # get 'tasks/edit'
root 'todo_list#index'
  resources :todo_list do
    resources :todo, shallow: true
  end

post '/todo_list', to: 'todo_list#create', as: 'add_todo_list'


post '/todo_list/:id/todo', to: 'todo#create', as: 'add_todo'
#  Prefix Verb   URI Pattern                                 Controller#Action
#                 root GET    /                                           todo_list#index
# todo_list_todo_index GET    /todo_list/:todo_list_id/todo(.:format)     todo#index
#                      POST   /todo_list/:todo_list_id/todo(.:format)     todo#create
#   new_todo_list_todo GET    /todo_list/:todo_list_id/todo/new(.:format) todo#new
#            edit_todo GET    /todo/:id/edit(.:format)                    todo#edit
#                 todo GET    /todo/:id(.:format)                         todo#show
#                      PATCH  /todo/:id(.:format)                         todo#update
#                      PUT    /todo/:id(.:format)                         todo#update
#                      DELETE /todo/:id(.:format)                         todo#destroy
#      todo_list_index GET    /todo_list(.:format)                        todo_list#index
#                      POST   /todo_list(.:format)                        todo_list#create
#        new_todo_list GET    /todo_list/new(.:format)                    todo_list#new
#       edit_todo_list GET    /todo_list/:id/edit(.:format)               todo_list#edit
#            todo_list GET    /todo_list/:id(.:format)                    todo_list#show
#                      PATCH  /todo_list/:id(.:format)                    todo_list#update
#                      PUT    /todo_list/:id(.:format)                    todo_list#update
#                      DELETE /todo_list/:id(.:format)                    todo_list#destroy

  
end
