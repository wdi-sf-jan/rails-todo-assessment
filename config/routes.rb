Rails.application.routes.draw do

  resources :todolist do
    resources :todoitem
  end
  
  root 'todolist#index'

end
