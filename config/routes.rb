Rails.application.routes.draw do
  # root 'articles#about'
  # get 'articles',to: 'articles#index'
  resources :articles

  # get 'users',to: 'users#index'
  resources :users
end
