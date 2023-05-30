# frozen_string_literal: true

FactoryBot.define do
  factory :admin do
    sequence :email do |n|
      "#{Faker::Internet.unique.email}#{n}"
    end

    sequence :phone do |n|
      "#{Faker::Number.number(digits: 11)}#{n}"
    end
    role { Faker::Number.between(from: 0, to: 1) }

    password { Faker::Internet.password }
  end
end
