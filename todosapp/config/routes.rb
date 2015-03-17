Rails.application.routes.draw do

  root "lists#index"

  resources :lists do
    resources :items, shallow: true
  end

=begin
   Prefix Verb   URI Pattern                         Controller#Action
         root GET    /                                   lists#index
   list_items GET    /lists/:list_id/items(.:format)     items#index
              POST   /lists/:list_id/items(.:format)     items#create
new_list_item GET    /lists/:list_id/items/new(.:format) items#new
    edit_item GET    /items/:id/edit(.:format)           items#edit
         item GET    /items/:id(.:format)                items#show
              PATCH  /items/:id(.:format)                items#update
              PUT    /items/:id(.:format)                items#update
              DELETE /items/:id(.:format)                items#destroy
        lists GET    /lists(.:format)                    lists#index
              POST   /lists(.:format)                    lists#create
     new_list GET    /lists/new(.:format)                lists#new
    edit_list GET    /lists/:id/edit(.:format)           lists#edit
         list GET    /lists/:id(.:format)                lists#show
              PATCH  /lists/:id(.:format)                lists#update
              PUT    /lists/:id(.:format)                lists#update
              DELETE /lists/:id(.:format)                lists#destroy
=end

  # get 'items/index'

  # get 'items/show'

  # get 'items/edit'

  # get 'items/new'

  # get 'lists/index'

  # get 'lists/show'

  # get 'lists/edit'

  # get 'lists/new'

  # get 'list/index'

  # get 'list/show'

  # get 'list/edit'

  # get 'list/new'

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
