# frozen_string_literal: true

class AddUniqunessIndexToProductSlug < ActiveRecord::Migration[7.0]
  def change
    add_index :products, :slug, unique: true
  end
end
