# frozen_string_literal: true

ActiveAdmin.register Category do
  menu parent: I18n.t('active_admin.store.title')
  actions :all
  permit_params %i[
    name
  ]
  # ================== index page =======================
  index do
    column :name
    actions
  end
  # ================== filters =======================
  filter :name
  # ================== forms =======================
  form do |form|
    form.inputs
    form.actions
  end
end
