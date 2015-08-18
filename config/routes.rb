Rails.application.routes.draw do
  root 'magazines#index'
  devise_for :users, controllers: {sessions: 'sessions', registrations: 'registrations'}
end
