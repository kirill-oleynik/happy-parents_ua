# frozen_string_literal: true

FactoryBot.define do
  factory :trade_mark do
    sequence(:name) { |n| "#{FFaker::Lorem.word}#{n}" }
    manufacturer
  end
end
