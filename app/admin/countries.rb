# frozen_string_literal: true

ActiveAdmin.register Country do
  menu parent: I18n.t('active_admin.menu.store')

  permit_params :name, :name_uk, :name_ru

  index do
    selectable_column
    column :name
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name_uk
      f.input :name_ru
    end
    f.actions
  end
end
