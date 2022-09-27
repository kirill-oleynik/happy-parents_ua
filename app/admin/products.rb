# frozen_string_literal: true

ActiveAdmin.register Product do
  menu parent: I18n.t('admin.store.title')
  actions :all
  permit_params %i[code title slug price male_gender female_gender min_age max_age]

  # ================== index page =======================
  index do
    selectable_column
    column :code
    column :title
    column :price
    actions
  end
  # ================== show page =======================
  show do
    attributes_table do
      %i[
        code
        title
        slug
        price
        male_gender
        min_age
        max_age
        female_gender
      ].each { |attribute| row(attribute) }
    end
  end
  # ================== filters =======================
  filter :code
  filter :title
  filter :male_gender
  filter :female_gender
  filter :in_age
  filter :ax_age
  filter :price_cents, label: I18n.t('admin.store.products.filters.labels.price_cents')
  # ================== forms =======================
  form do |f|
    f.inputs
    f.actions
  end
  form do |form|
    form.inputs do
      form.input :code
      form.input :title
      form.input :slug
      form.input :male_gender
      form.input :female_gender
      form.input :min_age
      form.input :max_age
      form.input :price, label: t('admin.store.products.form.labels.price')
      form.semantic_errors
      form.actions
    end
  end
end
