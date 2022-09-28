# frozen_string_literal: true

class RenameProductPriceToPriceCents < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :price, :price_cents
  end
end
