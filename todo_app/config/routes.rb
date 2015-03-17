Rails.application.routes.draw do
  resources :to_do_lists do
    resources :items, shallow: true
  end

  end
