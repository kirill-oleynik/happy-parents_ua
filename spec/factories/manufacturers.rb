# frozen_string_literal: true

FactoryBot.define do
  factory :manufacturer do
    sequence(:name) { |n| "#{FFaker::Lorem.word}#{n}" }
    country
  end
end
