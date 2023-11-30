# frozen_string_literal: true

# Represents manufacturer's trade mark entity
class TradeMark < ApplicationRecord
  belongs_to :manufacturer
  has_many :toys, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
