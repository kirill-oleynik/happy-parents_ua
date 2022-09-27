# frozen_string_literal: true

class AddAgeColumnsToProduct < ActiveRecord::Migration[7.0]
  def change
    %i[min_age max_age].map do |column|
      add_column :products, column, :integer
    end
  end
end
