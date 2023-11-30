# frozen_string_literal: true

class CreateManufacturerSupplyAgreements < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturer_supply_agreements do |t|
      t.belongs_to :manufacturer
      t.belongs_to :supplier
      t.timestamps null: false
    end
  end
end
