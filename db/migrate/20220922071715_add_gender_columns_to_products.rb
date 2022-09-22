# frozen_string_literal: true

class AddGenderColumnsToProducts < ActiveRecord::Migration[7.0]
  def change
    %i[male_gender female_gender].map do |column|
      add_column :products, column, :boolean
    end
  end
end
