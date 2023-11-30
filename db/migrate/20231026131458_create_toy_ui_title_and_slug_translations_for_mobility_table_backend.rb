# frozen_string_literal: true

class CreateToyUiTitleAndSlugTranslationsForMobilityTableBackend < ActiveRecord::Migration[7.0]
  def change
    create_table :toy_translations do |t|
      # Translated attribute(s)
      t.string :ui_title
      t.string :slug

      t.string :locale, null: false
      t.references :toy, null: false, foreign_key: true, index: false

      t.timestamps null: false
    end

    add_index :toy_translations, :locale, name: :index_toy_translations_on_locale
    add_index :toy_translations, %i[toy_id locale], name: :index_toy_translations_on_toy_id_and_locale, unique: true
  end
end
