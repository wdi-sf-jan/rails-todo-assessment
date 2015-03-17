Rails.application.routes.draw do

  root 'lists#index'

  resources :lists

  resources :todos

#      Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         lists#index
#     lists GET    /lists(.:format)          lists#index
#           POST   /lists(.:format)          lists#create
#  new_list GET    /lists/new(.:format)      lists#new
# edit_list GET    /lists/:id/edit(.:format) lists#edit
#      list GET    /lists/:id(.:format)      lists#show
#           PATCH  /lists/:id(.:format)      lists#update
#           PUT    /lists/:id(.:format)      lists#update
#           DELETE /lists/:id(.:format)      lists#destroy
#     todos GET    /todos(.:format)          todos#index
#           POST   /todos(.:format)          todos#create
#  new_todo GET    /todos/new(.:format)      todos#new
# edit_todo GET    /todos/:id/edit(.:format) todos#edit
#      todo GET    /todos/:id(.:format)      todos#show
#           PATCH  /todos/:id(.:format)      todos#update
#           PUT    /todos/:id(.:format)      todos#update
#           DELETE /todos/:id(.:format)      todos#destroy

end
