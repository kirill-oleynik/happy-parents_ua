# frozen_string_literal: true

# Products Country entity
class Country < ApplicationRecord
  extend RansackSearchable

  extend Mobility
  translates :name
  has_many :manufacturers, dependent: :nullify
  validates :name, presence: true, uniqueness: true
end
