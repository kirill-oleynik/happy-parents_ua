# frozen_string_literal: true

class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.belongs_to :trade_mark
      t.string :inventory_number, null: false
      t.string :manufacturer_title, null: false
      t.string :ui_title
      t.string :slug
      t.integer :purchase_price_cents, null: false
      t.integer :retail_price_cents, null: false
      t.integer :balance_in_warehouse, null: false
      t.boolean :drop_shipping_available, null: false, default: false
      t.boolean :published, null: false, default: false
      t.timestamps
    end

    add_index :toys, :slug, unique: true
    add_index :toys, :ui_title, unique: true
    add_index :toys, %i[inventory_number trade_mark_id], unique: true
    add_index :toys, %i[manufacturer_title trade_mark_id], unique: true
  end
end
