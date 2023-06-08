# frozen_string_literal: true

# Products Manufacturer entity
class Manufacturer < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
