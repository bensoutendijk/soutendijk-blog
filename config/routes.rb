Rails.application.routes.draw do
  
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'articles#index'

  resources :articles do
    resources :comments, module: :articles, only: [:create, :destroy]
    resources :votes, module: :articles, only: [:create, :destroy]
  end
  
  get 'about', to: 'pages#about'

end
