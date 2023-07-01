# frozen_string_literal: true

ActiveAdmin.register ManufacturerSupplyAgreement do
  menu parent: I18n.t('active_admin.menu.warehouse')

  permit_params :supplier_id, :manufacturer_id

  index do
    selectable_column
    column :manufacturer
    column :supplier
    actions
  end

  %i[
    manufacturer
    supplier
  ].each { |attribute| filter(attribute) }

  form do |f|
    f.inputs do
      f.input :manufacturer
      f.input :supplier
    end
    f.actions
  end
end
