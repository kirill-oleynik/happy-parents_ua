# frozen_string_literal: true

#
# code:string
# title:string
# price:integer
class Product < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :title, presence: true
  validates :price, presence: true
end
