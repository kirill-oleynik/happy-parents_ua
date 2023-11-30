# frozen_string_literal: true

class CreateTradeMarks < ActiveRecord::Migration[7.0]
  def change
    create_table :trade_marks do |t|
      t.string :name, null: false
      t.belongs_to :manufacturer
      t.timestamps
    end
    add_index :trade_marks, :name, unique: true
  end
end
