# frozen_string_literal: true

FactoryBot.define do
  factory :supplier do
    sequence(:name) { |n| "#{FFaker::Lorem.word}#{n}" }
  end
end
