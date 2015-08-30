Rails.application.routes.draw do
  resources :mail_subscriptions
  root 'magazines#index'
  devise_for :users, controllers: {sessions: 'sessions', registrations: 'registrations'}
end
