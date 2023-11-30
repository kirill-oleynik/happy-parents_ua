# frozen_string_literal: true

ActiveAdmin.register Supplier do
  menu parent: I18n.t('active_admin.menu.warehouse')

  permit_params :name

  index do
    selectable_column
    column :name
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
end
