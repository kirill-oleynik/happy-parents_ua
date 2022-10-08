# frozen_string_literal: true

Admin.create!(
  email: Rails.application.credentials.dig(:db, :seed, :default_admin, :email),
  password: Rails.application.credentials.dig(:db, :seed, :default_admin, :password)
)
