# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    sequence(:code) { |number| "#{Faker::Lorem.word}#{number}" }
    title { Faker::Lorem.words(number: 2).join(' ') }
    price_cents { srand.to_s[0, (1..5).to_a.sample].to_i }
    sequence(:slug) { |number| Faker::Internet.unique.slug(glue: '-') + number.to_s }
    min_age { (0..1).to_a.sample }
    max_age { (1..99).to_a.sample }
    trait :for_male do
      male_gender { true }
    end
    trait :for_female do
      female_gender { true }
    end
  end
end
