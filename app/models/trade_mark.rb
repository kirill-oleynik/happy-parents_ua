# frozen_string_literal: true

# Represents manufacturer's trade mark entity
class TradeMark < ApplicationRecord
  extend RansackSearchable

  belongs_to :manufacturer, optional: true
  has_many :toys, dependent: :nullify
  validates :name, presence: true, uniqueness: true
end
