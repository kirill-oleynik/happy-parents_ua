# frozen_string_literal: true

# Products Supplier entity
class Supplier < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
