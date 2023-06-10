# frozen_string_literal: true

FactoryBot.define do
  factory :country do
    sequence(:name) { |n| "#{FFaker::Address.country}#{n}" }
  end
end
