# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    category
    sequence(:code) { |number| "#{Faker::Lorem.word}#{number}" }
    sequence(:title) { |number| "#{Faker::Lorem.words(number: 2).join(' ')} #{number}" }
    sequence(:title_ru) { |number| "#{Faker::Lorem.words(number: 2).join(' ')} #{number}" }
    price_cents { srand.to_s[0, (1..5).to_a.sample].to_i }
    sequence(:slug) { |number| Faker::Internet.unique.slug(glue: '-') + number.to_s }
    min_age { (0..1).to_a.sample }
    max_age { (1..99).to_a.sample }
    is_published { false }
    trait :is_published do
      is_published { true }
    end
    trait :for_male do
      male_gender { true }
    end
    trait :for_female do
      female_gender { true }
    end
  end
end
