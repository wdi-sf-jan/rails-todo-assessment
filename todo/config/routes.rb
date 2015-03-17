Rails.application.routes.draw do

root 'task_lists#index'

  get 'task_lists/index'

  get 'task_lists/new'

  post 'task_lists/create', to: "task_lists#create"

  get 'task_lists/update'

  get 'task_lists/show'

  get 'task_lists/destroy'

  get 'tasks/index'

  get 'tasks/new'

  get 'tasks/create'

  get 'tasks/update'

  get 'tasks/show'

 


#   Prefix Verb URI Pattern                   Controller#Action
#               root GET  /                             task_lists#index
#   task_lists_index GET  /task_lists/index(.:format)   task_lists#index
#     task_lists_new GET  /task_lists/new(.:format)     task_lists#new
#  task_lists_create GET  /task_lists/create(.:format)  task_lists#create
#  task_lists_update GET  /task_lists/update(.:format)  task_lists#update
#    task_lists_show GET  /task_lists/show(.:format)    task_lists#show
# task_lists_destroy GET  /task_lists/destroy(.:format) task_lists#destroy
#        tasks_index GET  /tasks/index(.:format)        tasks#index
#          tasks_new GET  /tasks/new(.:format)          tasks#new
#       tasks_create GET  /tasks/create(.:format)       tasks#create
#       tasks_update GET  /tasks/update(.:format)       tasks#update
#         tasks_show GET  /tasks/show(.:format)         tasks#show
#      tasks_destroy GET  /tasks/destroy(.:format)      tasks#destroy

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
