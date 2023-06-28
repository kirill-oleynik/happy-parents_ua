# frozen_string_literal: true

ActiveAdmin.register TradeMark do
  menu parent: I18n.t('active_admin.menu.store')

  permit_params :name, :manufacturer_id

  index do
    selectable_column
    column :name
    actions
  end

  %i[
    name
    manufacturer
  ].each { |attrinute| filter(attrinute) }

  form do |f|
    f.inputs do
      f.input :name
      f.input :manufacturer
    end
    f.actions
  end
end
