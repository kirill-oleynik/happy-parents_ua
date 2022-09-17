# frozen_string_literal: true

ActiveAdmin.register Product do
  menu parent: I18n.t('admin.store.title')
  actions :all
  permit_params %i[code title price]

  # ================== index page =======================
  index do
    selectable_column
    column :code
    column :title
    column :price
    actions
  end
  # ================== filters =======================
  %i[
    code
    title
    price
    updated_at
  ].each { |attribute| filter(attribute) }
  # ================== forms =======================
  form do |form|
    form.inputs do
      form.input :code
      form.input :title
      form.input :price, label: t('admin.store.products.form.labels.price')
      form.actions
    end
  end
end
