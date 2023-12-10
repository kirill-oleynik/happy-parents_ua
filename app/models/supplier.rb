# frozen_string_literal: true

# Products Supplier entity
class Supplier < ApplicationRecord
  extend RansackSearchable

  has_many :manufacturer_supply_agreements, dependent: :nullify
  has_many :manufacturers, through: :manufacturer_supply_agreements
  validates :name, presence: true, uniqueness: true
end
