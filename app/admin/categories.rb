# frozen_string_literal: true

ActiveAdmin.register Category do
  menu parent: I18n.t('active_admin.store.title')
  actions :all
  permit_params %i[
    name
  ]
  # ================== index page =======================
  index do
    selectable_column
    column :name
    actions
  end
  # ================== show page =======================
  # ================== filters =======================
  filter :name
  # ================== forms =======================
  form do |form|
    form.inputs
    form.actions
  end
end
