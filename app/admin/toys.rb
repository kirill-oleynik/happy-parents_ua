# frozen_string_literal: true

ActiveAdmin.register Toy do
  menu parent: I18n.t('active_admin.menu.store')

  permit_params :inventory_number,
                :slug,
                :slug_uk,
                :slug_ru,
                :ui_title,
                :ui_title_uk,
                :ui_title_ru,
                :manufacturer_title,
                :purchase_price,
                :balance_in_warehouse,
                :drop_shipping_available,
                :published,
                :trade_mark_id,
                :retail_price

  index do
    selectable_column
    column :inventory_number
    column :ui_title
    column :manufacturer_title
    column :retail_price do |toy|
      toy.retail_price.format
    end
    column :balance_in_warehouse
    column :drop_shipping_available
    column :published
    actions default: true do |toy|
      link_to(t('active_admin.actions.view_in_app'), toy_path(id: toy.id), target: '_blank', rel: 'noopener')
    end
  end

  filter :inventory_number
  filter :manufacturer_title
  # filter :ui_title_uk
  # filter :ui_title_ru
  filter :retail_price_cents
  filter :balance_in_warehouse
  filter :drop_shipping_available
  filter :published
  filter :trade_mark

  show title: :ui_title do
    attributes_table do
      row :id
      row :inventory_number
      row :slug_uk
      row :slug_ru
      row :ui_title_uk
      row :ui_title_ru
      row :manufacturer_title
      row :purchase_price do |toy|
        toy.purchase_price.format
      end
      row :balance_in_warehouse
      row :drop_shipping_available
      row :published
      row :trade_mark
      row :retail_price do |toy|
        toy.retail_price.format
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :inventory_number
      f.input :slug_uk
      f.input :slug_ru
      f.input :ui_title_uk
      f.input :ui_title_ru
      f.input :manufacturer_title
      f.input :purchase_price, placeholder: 'грн,коп'
      f.input :balance_in_warehouse
      f.input :drop_shipping_available
      f.input :published
      f.input :trade_mark, as: :select, collection: TradeMark.all
      f.input :retail_price, placeholder: 'грн,коп'
    end
    f.actions
  end
end
