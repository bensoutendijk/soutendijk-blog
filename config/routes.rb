Rails.application.routes.draw do
  
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'articles#index'

  resources :articles do
    resources :comments
    resources :votes, only: [:create, :destroy]
  end
  
  resources :comments do
    resources :votes, only: [:create, :destroy]
  end
  
  get 'about', to: 'pages#about'

end
