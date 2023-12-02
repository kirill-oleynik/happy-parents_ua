# frozen_string_literal: true

# Simple toy entity
class Toy < ApplicationRecord
  include RanSackableAttributable

  SLUG_REGEX = /\A[a-zа-яґєіїё-]+\z/u

  extend Mobility
  translates :slug, :ui_title

  belongs_to :trade_mark

  delegate :name, to: :trade_mark, prefix: true

  validates :inventory_number,
            :manufacturer_title,
            :purchase_price_cents,
            :retail_price_cents,
            :balance_in_warehouse,
            presence: true

  validates :slug,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: SLUG_REGEX }

  validates :inventory_number,
            :manufacturer_title,
            uniqueness: { scope: :trade_mark_id, case_sensitive: false }

  validates :purchase_price_cents,
            :retail_price_cents,
            :balance_in_warehouse,
            numericality: { greater_than_or_equal_to: 0 }
end
