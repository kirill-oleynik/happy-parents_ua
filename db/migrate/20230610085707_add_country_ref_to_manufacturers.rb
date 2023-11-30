# frozen_string_literal: true

class AddCountryRefToManufacturers < ActiveRecord::Migration[7.0]
  def change
    add_reference :manufacturers, :country, foreign_key: true
  end
end
