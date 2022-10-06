# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    root to: 'pages#home'
    resources :products, param: :slug, only: %i[show]
  end
end
