# frozen_string_literal: true

Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    devise_for :admins, ActiveAdmin::Devise.config
    ActiveAdmin.routes(self)
  end
end
