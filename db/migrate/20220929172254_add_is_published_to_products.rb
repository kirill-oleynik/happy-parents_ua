# frozen_string_literal: true

class AddIsPublishedToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :is_published, :boolean
  end
end
