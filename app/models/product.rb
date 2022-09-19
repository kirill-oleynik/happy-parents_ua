# frozen_string_literal: true

#
# code:string
# title:string
# price_cents:integer
class Product < ApplicationRecord
  SLUG_REGEXP = /\A[a-z\d-]+\z/

  monetize :price_cents

  validates :code, presence: true, uniqueness: true
  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true, format: { with: SLUG_REGEXP, message: :bad_slug }
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
end
