# frozen_string_literal: true

class AddTitleRuToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :title_ru, :string
    add_index :products, :title_ru, unique: true
  end
end
