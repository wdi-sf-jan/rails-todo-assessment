Rails.application.routes.draw do

  root 'list#index'

  resources :list do
    resources :item, shallow: true
  end

end

#        Prefix Verb   URI Pattern                         Controller#Action
#    list_items GET    /lists/:list_id/items(.:format)     items#index
#               POST   /lists/:list_id/items(.:format)     items#create
# new_list_item GET    /lists/:list_id/items/new(.:format) items#new
#     edit_item GET    /items/:id/edit(.:format)           items#edit
#          item GET    /items/:id(.:format)                items#show
#               PATCH  /items/:id(.:format)                items#update
#               PUT    /items/:id(.:format)                items#update
#               DELETE /items/:id(.:format)                items#destroy
#         lists GET    /lists(.:format)                    lists#index
#               POST   /lists(.:format)                    lists#create
#      new_list GET    /lists/new(.:format)                lists#new
#     edit_list GET    /lists/:id/edit(.:format)           lists#edit
#          list GET    /lists/:id(.:format)                lists#show
#               PATCH  /lists/:id(.:format)                lists#update
#               PUT    /lists/:id(.:format)                lists#update
#               DELETE /lists/:id(.:format)                lists#destroy
