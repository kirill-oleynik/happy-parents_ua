# frozen_string_literal: true

#
# code:string
# title:string
# price_cents:integer
class Product < ApplicationRecord
  monetize :price_cents

  validates :code, presence: true, uniqueness: true
  validates :title, presence: true
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
end
