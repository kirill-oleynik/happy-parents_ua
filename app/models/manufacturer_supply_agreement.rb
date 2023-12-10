# frozen_string_literal: true

# Describes suppliers - manufacturers many-to-many relationsip
class ManufacturerSupplyAgreement < ApplicationRecord
  extend RansackSearchable

  belongs_to :manufacturer, optional: true
  belongs_to :supplier, optional: true
end
