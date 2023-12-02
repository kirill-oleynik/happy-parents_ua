# frozen_string_literal: true

# Products Country entity
class Country < ApplicationRecord
  include RanSackableAttributable

  extend Mobility
  translates :name
  has_many :manufacturers, dependent: :nullify
  validates :name, presence: true, uniqueness: true
end
