# frozen_string_literal: true

# rubocop:disable Lint/EmptyBlock
Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
  end
  # rubocop:enable Lint/EmptyBlock
end
