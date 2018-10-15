Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'articles#index'
  
  devise_for :users, :controllers => {sessions: 'sessions', registrations: 'registrations'}
  
  # resources :users do
  #   resource :profile
  # end
  
  resources :articles do
    resources :comments, module: :articles
    resources :votes, module: :articles, only: [:create, :destroy, :update]
    patch :toggle_hidden, on: :member
  end
  
  resources :comments do
    resources :votes, module: :comments, only: [:create, :destroy, :update]
    resources :comments, module: :articles
  end
  
  get 'settings', to: 'pages#settings'

end
