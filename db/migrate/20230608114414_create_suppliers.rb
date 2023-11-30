# frozen_string_literal: true

class CreateSuppliers < ActiveRecord::Migration[7.0]
  def change
    create_table :suppliers do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :suppliers, :name, unique: true
  end
end
