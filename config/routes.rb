Rails.application.routes.draw do
  
  root to: 'articles#index'

  resources :articles

  get 'about', to: 'pages#about'

end
