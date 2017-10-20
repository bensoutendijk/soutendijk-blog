Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'articles#index'
  
  devise_for :users
  
  resources :articles do
    resources :comments, module: :articles, only: [:create, :destroy]
    resources :votes, module: :articles, only: [:create, :destroy, :update]
    patch :toggle_hidden, on: :member
  end
  
  resources :comments do
    resources :votes, module: :comments, only: [:create, :destroy, :update]
  end
  
  get 'about', to: 'pages#about'
  get 'settings', to: 'pages#settings'

end
