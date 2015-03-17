Rails.application.routes.draw do
 root 'visitors#index'
 resources :visitors do
  resources :todolists, shallow: true
end

end


#  Prefix Verb   URI Pattern                                   Controller#Action
#                 root GET    /                                             visitors#index
#    visitor_todolists GET    /visitors/:visitor_id/todolists(.:format)     todolists#index
#                      POST   /visitors/:visitor_id/todolists(.:format)     todolists#create
# new_visitor_todolist GET    /visitors/:visitor_id/todolists/new(.:format) todolists#new
#        edit_todolist GET    /todolists/:id/edit(.:format)                 todolists#edit
#             todolist GET    /todolists/:id(.:format)                      todolists#show
#                      PATCH  /todolists/:id(.:format)                      todolists#update
#                      PUT    /todolists/:id(.:format)                      todolists#update
#                      DELETE /todolists/:id(.:format)                      todolists#destroy
#             visitors GET    /visitors(.:format)                           visitors#index
#                      POST   /visitors(.:format)                           visitors#create
#          new_visitor GET    /visitors/new(.:format)                       visitors#new
#         edit_visitor GET    /visitors/:id/edit(.:format)                  visitors#edit
#              visitor GET    /visitors/:id(.:format)                       visitors#show
#                      PATCH  /visitors/:id(.:format)                       visitors#update
#                      PUT    /visitors/:id(.:format)                       visitors#update
#                      DELETE /visitors/:id(.:format)                       visitors#destroy