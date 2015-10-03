Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles
  resources :magazines
  resources :mail_subscriptions
  resources :admin
  root 'magazines#index'
  devise_for :users, controllers: {sessions: 'sessions', registrations: 'registrations'}
end
