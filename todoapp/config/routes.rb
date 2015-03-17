Rails.application.routes.draw do

  # get 'todo_items/index'

  # get 'todo_items/show'

  # get 'todo_items/edit'

  # get 'todo_items/new'

  # get 'todo_lists/index'

  # get 'todo_lists/show'

  # get 'todo_lists/edit'

  # get 'todo_lists/new'

  root 'todo_lists#index'

  resources :todo_lists do
    resources :todo_items, shallow: true
  end

=begin
Prefix Verb   URI Pattern                                        Controller#Action
                   root GET    /                                                  todo_lists#index
   todo_list_todo_items GET    /todo_lists/:todo_list_id/todo_items(.:format)     todo_items#index
                        POST   /todo_lists/:todo_list_id/todo_items(.:format)     todo_items#create
new_todo_list_todo_item GET    /todo_lists/:todo_list_id/todo_items/new(.:format) todo_items#new
         edit_todo_item GET    /todo_items/:id/edit(.:format)                     todo_items#edit
              todo_item GET    /todo_items/:id(.:format)                          todo_items#show
                        PATCH  /todo_items/:id(.:format)                          todo_items#update
                        PUT    /todo_items/:id(.:format)                          todo_items#update
                        DELETE /todo_items/:id(.:format)                          todo_items#destroy
             todo_lists GET    /todo_lists(.:format)                              todo_lists#index
                        POST   /todo_lists(.:format)                              todo_lists#create
          new_todo_list GET    /todo_lists/new(.:format)                          todo_lists#new
         edit_todo_list GET    /todo_lists/:id/edit(.:format)                     todo_lists#edit
              todo_list GET    /todo_lists/:id(.:format)                          todo_lists#show
                        PATCH  /todo_lists/:id(.:format)                          todo_lists#update
                        PUT    /todo_lists/:id(.:format)                          todo_lists#update
                        DELETE /todo_lists/:id(.:format)                          todo_lists#destroy
=end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
