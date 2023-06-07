# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  post 'locales/:locale', to: 'locales#create', as: 'set_locale'
end
