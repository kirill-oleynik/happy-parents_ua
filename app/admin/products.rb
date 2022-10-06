# frozen_string_literal: true

ActiveAdmin.register Product do
  menu parent: I18n.t('active_admin.store.title')
  actions :all
  permit_params %i[
    code
    title
    title_ru
    slug
    price
    male_gender
    female_gender
    min_age
    max_age
    is_published
    category_id
  ]

  # ================== index page =======================
  index do
    selectable_column
    column t('active_admin.store.products.labels.category'), :category
    column t('active_admin.store.products.labels.code'), :code
    column t('active_admin.store.products.labels.is_published'), :is_published
    column t('active_admin.store.products.labels.title'), :title
    column t('active_admin.store.products.labels.price'), :price
    actions default: true do |product|
      link_to t('active_admin.actions.show_in_app'), product_path(product.slug),
              target: '_blank',
              rel: 'noopener'
    end
  end
  # ================== show page =======================
  show do
    attributes_table do
      row(t('active_admin.store.products.labels.category'), &:category)
      row(t('active_admin.store.products.labels.code'), &:code)
      row(t('active_admin.store.products.labels.title'), &:title)
      row(t('active_admin.store.products.labels.is_published'), &:is_published)
      row(t('active_admin.store.products.labels.price'), &:price)
      row(t('active_admin.store.products.labels.slug'), &:slug)
      row(t('active_admin.store.products.labels.male_gender'), &:male_gender)
      row(t('active_admin.store.products.labels.female_gender'), &:female_gender)
      row(t('active_admin.store.products.labels.min_age'), &:min_age)
      row(t('active_admin.store.products.labels.max_age'), &:max_age)
    end
    active_admin_comments
  end
  # ================== filters =======================
  filter :category,     label: I18n.t('active_admin.store.products.labels.category')
  filter :code,         label: I18n.t('active_admin.store.products.labels.code')
  filter :slug,         label: I18n.t('active_admin.store.products.labels.slug')
  filter :is_published, label: I18n.t('active_admin.store.products.labels.is_published')
  filter :title,        label: I18n.t('active_admin.store.products.labels.title')
  filter :male_gender,  label: I18n.t('active_admin.store.products.labels.male_gender')
  filter :female_gender, label: I18n.t('active_admin.store.products.labels.female_gender')
  filter :min_age,      label: I18n.t('active_admin.store.products.labels.min_age')
  filter :max_age,      label: I18n.t('active_admin.store.products.labels.max_age')
  filter :price_cents,  label: I18n.t('active_admin.store.products.labels.price_cents')
  # ================== forms =======================
  form do |form|
    form.inputs do
      form.input :category,         label: t('active_admin.store.products.labels.category')
      form.input :code,         label: t('active_admin.store.products.labels.code')
      form.input :is_published, label: t('active_admin.store.products.labels.is_published')
      form.input :title,        label: t('active_admin.store.products.labels.title')
      form.input :title_ru,     label: t('active_admin.store.products.labels.title_ru')
      form.input :slug,         label: t('active_admin.store.products.labels.slug')
      form.input :male_gender,  label: t('active_admin.store.products.labels.male_gender')
      form.input :female_gender, label: t('active_admin.store.products.labels.female_gender')
      form.input :min_age,      label: t('active_admin.store.products.labels.min_age')
      form.input :max_age,      label: t('active_admin.store.products.labels.max_age')
      form.input :price,        label: t('active_admin.store.products.labels.price_form')
      form.semantic_errors
      form.actions
    end
  end
end
