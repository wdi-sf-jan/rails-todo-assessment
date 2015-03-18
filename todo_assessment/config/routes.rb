Rails.application.routes.draw do
  root 'todolists#index'

  resources :todolists do 
    resources :todos, shallow: true
  end
end
