Rails.application.routes.draw do

  root 'todolists#index'

  resources :todolists do
    resources :todoitems, shallow: true
  end

end
