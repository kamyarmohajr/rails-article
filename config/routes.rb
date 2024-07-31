Rails.application.routes.draw do
  root 'pages#home'
  get 'about-us', to: 'pages#about_us'
  get 'contact-us', to: 'pages#contact_us'
  
  resources :users
  resources :articles
end
