# frozen_string_literal: true

# Represents manufacturer's trade mark entity
class TradeMark < ApplicationRecord
  include RanSackableAttributable

  belongs_to :manufacturer
  has_many :toys, dependent: :nullify
  validates :name, presence: true, uniqueness: true
end
