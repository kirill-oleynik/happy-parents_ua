# frozen_string_literal: true

#
# code:string
# title:string
# price_cents:integer
class Product < ApplicationRecord
  SLUG_REGEXP = /\A[a-z\d-]+\z/

  monetize :price_cents

  validates :code, :title, presence: true, uniqueness: true
  validates :slug, presence: true, uniqueness: true, format: { with: SLUG_REGEXP, message: :bad_slug }
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
  validates :min_age, numericality: { greater_than_or_equal_to: 0 }
  validates :max_age, numericality: { greater_than: 0 }
  validate :min_age_must_be_lower_than_max_age

  private

  def min_age_must_be_lower_than_max_age
    errors.add(:base, message: :invalid_age_range) unless min_age.to_i < max_age.to_i
  end
end
