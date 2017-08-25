Rails.application.routes.draw do
  
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'articles#index'

  resources :articles do
    resources :comments, module: :articles
    resources :votes, module: :articles
  end
  
  get 'about', to: 'pages#about'

end
