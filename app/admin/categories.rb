# frozen_string_literal: true

ActiveAdmin.register Category do
  menu parent: I18n.t('active_admin.store.title')
  actions :all
  permit_params %i[
    name
  ]
  # ================== index page =======================
  index do
    column I18n.t('active_admin.store.categories.labels.name'), :name
    actions
  end
  # ================== show page =======================
  show do
    attributes_table do
      row(t('active_admin.store.categories.labels.name'), &:name)
    end
    active_admin_comments
  end
  # ================== filters =======================
  filter :name, label: I18n.t('active_admin.store.categories.labels.name')
  # ================== forms =======================
  form do |form|
    form.inputs do
      form.input :name, label: t('active_admin.store.categories.labels.name')
      form.semantic_errors
      form.actions
    end
  end
end
