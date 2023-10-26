# frozen_string_literal: true

FactoryBot.define do
  factory :toy do
    trade_mark
    sequence(:inventory_number) { |n| "#{rand.to_s[-3..]}#{n}" }
    sequence(:manufacturer_title) { |n| "#{FFaker::Lorem.word}#{n}" }
    sequence(:ui_title) { |n| "#{FFaker::Lorem.word}#{n}" }
    slug { FFaker::Internet.unique.slug(nil, '-') }
    purchase_price_cents { rand(100..1000) }
    retail_price_cents { rand(1000..10_000) }
    balance_in_warehouse { rand(0..100) }
    drop_shipping_available { %i[true false].sample }
    published { %i[true false].sample }
  end
end
