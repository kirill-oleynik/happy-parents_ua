# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :code, null: false
      t.string :title, null: false
      t.integer :price, null: false

      t.timestamps
    end
    add_index :products, :code, unique: true
  end
end
