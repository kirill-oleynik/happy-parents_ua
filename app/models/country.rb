# frozen_string_literal: true

# Products Country entity
class Country < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
