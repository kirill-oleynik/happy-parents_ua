# frozen_string_literal: true

# Products Manufacturer entity
class Manufacturer < ApplicationRecord
  belongs_to :country
  has_many :manufacturer_supply_agreements, dependent: :destroy
  has_many :suppliers, through: :manufacturer_supply_agreements

  validates :name, presence: true, uniqueness: true
end
