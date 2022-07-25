# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    phone { "+380#{srand.to_s[0, 7]}" }
    password_digest { Faker::Internet.password }
  end

  trait :with_invalid_phone do
    phone { "+380#{SecureRandom.hex[0, 7]}" }
  end
  trait :with_invalid_password_confirmation do
    password { Faker::Internet.password }
    password_confirmation { Faker::Internet.password }
  end
end
