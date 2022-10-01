# frozen_string_literal: true

ActiveAdmin.register Product do
  menu parent: I18n.t('active_admin.store.title')
  actions :all
  permit_params %i[
    code title
    slug
    price
    male_gender
    female_gender
    min_age
    max_age
    is_published
  ]

  # ================== index page =======================
  index do
    selectable_column
    column :code
    column :is_published
    column :title
    column :price
    actions
  end
  # ================== filters =======================
  filter :code
  filter :is_published
  filter :title
  filter :male_gender
  filter :female_gender
  filter :in_age
  filter :ax_age
  filter :price_cents, label: I18n.t('active_admin.store.products.filters.labels.price_cents')
  # ================== forms =======================
  form do |form|
    form.inputs do
      form.input :code
      form.input :is_published
      form.input :title
      form.input :slug
      form.input :male_gender
      form.input :female_gender
      form.input :min_age
      form.input :max_age
      form.input :price, label: t('active_admin.store.products.form.labels.price')
      form.semantic_errors
      form.actions
    end
  end
end
