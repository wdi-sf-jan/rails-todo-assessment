Rails.application.routes.draw do

  root 'persons#index'  
  resources :persons do 
    resources :tasks
  end 

#   Prefix Verb   URI Pattern                                  Controller#Action
#             root GET    /                                            persons#index
#     person_tasks GET    /persons/:person_id/tasks(.:format)          tasks#index
#                  POST   /persons/:person_id/tasks(.:format)          tasks#create
#  new_person_task GET    /persons/:person_id/tasks/new(.:format)      tasks#new
# edit_person_task GET    /persons/:person_id/tasks/:id/edit(.:format) tasks#edit
#      person_task GET    /persons/:person_id/tasks/:id(.:format)      tasks#show
#                  PATCH  /persons/:person_id/tasks/:id(.:format)      tasks#update
#                  PUT    /persons/:person_id/tasks/:id(.:format)      tasks#update
#                  DELETE /persons/:person_id/tasks/:id(.:format)      tasks#destroy
#          persons GET    /persons(.:format)                           persons#index
#                  POST   /persons(.:format)                           persons#create
#       new_person GET    /persons/new(.:format)                       persons#new
#      edit_person GET    /persons/:id/edit(.:format)                  persons#edit
#           person GET    /persons/:id(.:format)                       persons#show
#                  PATCH  /persons/:id(.:format)                       persons#update
#                  PUT    /persons/:id(.:format)                       persons#update
#                  DELETE /persons/:id(.:format)                       persons#destroy

#lol i did "resoure" instead of "resourceS"
#    Prefix Verb   URI Pattern                   Controller#Action
#      persons_tasks POST   /persons/tasks(.:format)      tasks#create
#  new_persons_tasks GET    /persons/tasks/new(.:format)  tasks#new
# edit_persons_tasks GET    /persons/tasks/edit(.:format) tasks#edit
#                    GET    /persons/tasks(.:format)      tasks#show
#                    PATCH  /persons/tasks(.:format)      tasks#update
#                    PUT    /persons/tasks(.:format)      tasks#update
#                    DELETE /persons/tasks(.:format)      tasks#destroy
#            persons POST   /persons(.:format)            persons#create
#        new_persons GET    /persons/new(.:format)        persons#new
#       edit_persons GET    /persons/edit(.:format)       persons#edit
#                    GET    /persons(.:format)            persons#show
#                    PATCH  /persons(.:format)            persons#update
#                    PUT    /persons(.:format)            persons#update
#                    DELETE /persons(.:format)            persons#destroy
#        tasks_index GET    /tasks/index(.:format)        tasks#index
#         tasks_show GET    /tasks/show(.:format)         tasks#show
#          tasks_new GET    /tasks/new(.:format)          tasks#new
#         tasks_edit GET    /tasks/edit(.:format)         tasks#edit
#      persons_index GET    /persons/index(.:format)      persons#index
#       persons_show GET    /persons/show(.:format)       persons#show
#        persons_new GET    /persons/new(.:format)        persons#new
#       persons_edit GET    /persons/edit(.:format)       persons#edit

  
end
