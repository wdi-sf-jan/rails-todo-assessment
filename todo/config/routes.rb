Rails.application.routes.draw do
  resources :todolists

root 'todolist#index'

  get 'task/new'

  get 'todolist/index'

  get 'todolist/show'

  get 'todolist/new'

  get 'todolist/edit'

end



#   Prefix Verb   URI Pattern                   Controller#Action
#      todolists GET    /todolists(.:format)          todolists#index
#                POST   /todolists(.:format)          todolists#create
#   new_todolist GET    /todolists/new(.:format)      todolists#new
#  edit_todolist GET    /todolists/:id/edit(.:format) todolists#edit
#       todolist GET    /todolists/:id(.:format)      todolists#show
#                PATCH  /todolists/:id(.:format)      todolists#update
#                PUT    /todolists/:id(.:format)      todolists#update
#                DELETE /todolists/:id(.:format)      todolists#destroy
#           root GET    /                             todolist#index
#       task_new GET    /task/new(.:format)           task#new
# todolist_index GET    /todolist/index(.:format)     todolist#index
#  todolist_show GET    /todolist/show(.:format)      todolist#show
#   todolist_new GET    /todolist/new(.:format)       todolist#new
#  todolist_edit GET    /todolist/edit(.:format)      todolist#edit