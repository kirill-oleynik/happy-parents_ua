# frozen_string_literal: true

FactoryBot.define do
  factory :admin do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    trait :with_invalid_email_format do
      email { Faker::Lorem.word }
    end
  end
end
