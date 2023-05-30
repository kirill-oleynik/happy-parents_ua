# frozen_string_literal: true

if Rails.env.development?
  admin_creds = Rails.application.credentials.dig(:seeds, :admin)
  Admin.create!(
    email: admin_creds[:email],
    phone: "#{Faker::Number.number(digits: 2)}#{Faker::PhoneNumber.unique.phone_number.tr('(  )-', '')}",
    password: admin_creds[:password],
    password_confirmation: admin_creds[:password],
    role: 0
  )
end
