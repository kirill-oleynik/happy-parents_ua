# frozen_string_literal: true

# Describes suppliers - manufacturers many-to-many relationsip
class ManufacturerSupplyAgreement < ApplicationRecord
  belongs_to :manufacturer
  belongs_to :supplier
end
