Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'articles#index'

  resources :articles

  get 'about', to: 'pages#about'

end
