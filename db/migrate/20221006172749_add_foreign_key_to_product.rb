# frozen_string_literal: true

class AddForeignKeyToProduct < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :products, :categories
  end
end
