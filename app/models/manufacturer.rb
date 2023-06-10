# frozen_string_literal: true

# Products Manufacturer entity
class Manufacturer < ApplicationRecord
  belongs_to :country
  validates :name, presence: true, uniqueness: true
end
