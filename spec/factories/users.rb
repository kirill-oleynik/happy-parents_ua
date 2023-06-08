# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "#{FFaker::Internet.unique.email}#{n}" }

    phone { Array.new(12) { rand(10) }.join }
    role { rand(0..1) }

    password { FFaker::Internet.password }

    trait :with_superadmin_role do
      role { 0 }
    end
    trait :with_admin_role do
      role { 1 }
    end
  end
end
