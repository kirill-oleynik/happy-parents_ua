# frozen_string_literal: true

# Products Manufacturer entity
class Manufacturer < ApplicationRecord
  extend RansackSearchable

  belongs_to :country, optional: true
  has_many :manufacturer_supply_agreements, dependent: :nullify
  has_many :suppliers, through: :manufacturer_supply_agreements

  validates :name, presence: true, uniqueness: true
end
