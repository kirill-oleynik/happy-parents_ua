# frozen_string_literal: true

ActiveAdmin.register Toy do
  menu parent: I18n.t('active_admin.menu.store')

  ALL_ATTRIBUTES = %i[inventory_number
                      slug
                      slug_uk
                      slug_ru
                      ui_title
                      ui_title_uk
                      ui_title_ru
                      manufacturer_title
                      purchase_price_cents
                      balance_in_warehouse
                      drop_shipping_available
                      published
                      trade_mark
                      retail_price_cents].freeze

  permit_params ALL_ATTRIBUTES

  index do
    selectable_column
    column :inventory_number
    column :ui_title
    column :manufacturer_title
    column :purchase_price_cents
    column :balance_in_warehouse
    column :drop_shipping_available
    column :published
    actions
  end

  %i[inventory_number
     trade_mark
     ui_title
     manufacturer_title
     purchase_price_cents
     balance_in_warehouse
     drop_shipping_available
     published].each { |attribute| filter(attribute) }

  show title: :ui_title do
    attributes_table do
      ([:id] + ALL_ATTRIBUTES).each { |attribute| row(attribute) }
    end
  end

  form do |f|
    f.inputs do
      ALL_ATTRIBUTES.each { |attribute| f.input(attribute) }
    end
    f.actions
  end
end
