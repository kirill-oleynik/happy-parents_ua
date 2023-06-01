# frozen_string_literal: true

if Rails.env.development?
  user_creds = Rails.application.credentials.dig(:seeds, :user)
  User.create!(
    email: user_creds[:email],
    phone: "#{Faker::Number.number(digits: 2)}#{Faker::PhoneNumber.unique.phone_number.tr('(  )-', '')}",
    password: user_creds[:password],
    password_confirmation: user_creds[:password],
    role: 0
  )
end
