Rails.application.routes.draw do
  get 'todo/index'
  post 'todo/index'
  delete 'todo/index'
  
  get 'todo/new'

  get 'todo/show'

  get 'todo/edit'

  

#       Prefix Verb URI Pattern           Controller#Action
# todo_index GET  /todo/index(.:format) todo#index
#   todo_new GET  /todo/new(.:format)   todo#new
#  todo_show GET  /todo/show(.:format)  todo#show
#  todo_edit GET  /todo/edit(.:format)  todo#edit


  end