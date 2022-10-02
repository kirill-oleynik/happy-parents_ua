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
  # ================== show page =======================
  show do
    attributes_table do
      row(t('active_admin.store.products.show.labels.code'), &:code)
      row(t('active_admin.store.products.show.labels.title'), &:title)
      row(t('active_admin.store.products.show.labels.is_published'), &:is_published)
      row(t('active_admin.store.products.show.labels.price'), &:price)
      row(t('active_admin.store.products.form.labels.slug'), &:slug)
      row(t('active_admin.store.products.show.labels.male_gender'), &:male_gender)
      row(t('active_admin.store.products.show.labels.female_gender'), &:female_gender)
      row(t('active_admin.store.products.show.labels.min_age'), &:min_age)
      row(t('active_admin.store.products.show.labels.max_age'), &:max_age)
    end
    active_admin_comments
  end
  # end
  # ================== filters =======================
  filter :code,
         label: I18n.t('active_admin.store.products.filters.labels.code')
  filter :slug
  filter :is_published,
         label: I18n.t('active_admin.store.products.filters.labels.is_published')
  filter :title,
         label: I18n.t('active_admin.store.products.filters.labels.title')
  filter :male_gender,
         label: I18n.t('active_admin.store.products.filters.labels.male_gender')
  filter :female_gender,
         label: I18n.t('active_admin.store.products.filters.labels.female_gender')
  filter :min_age,
         label: I18n.t('active_admin.store.products.filters.labels.min_age')
  filter :max_age,
         label: I18n.t('active_admin.store.products.filters.labels.max_age')
  filter :price_cents,
         label: I18n.t('active_admin.store.products.filters.labels.price_cents')
  # ================== forms =======================
  form do |form|
    form.inputs do
      form.input :code,
                 label: t('active_admin.store.products.form.labels.code')
      form.input :is_published,
                 label: t('active_admin.store.products.form.labels.is_published')
      form.input :title,
                 label: t('active_admin.store.products.form.labels.title')
      form.input :title_ru,
                 label: t('active_admin.store.products.form.labels.title_ru')
      form.input :slug,
                 label: t('active_admin.store.products.form.labels.slug')
      form.input :male_gender,
                 label: t('active_admin.store.products.form.labels.male_gender')
      form.input :female_gender,
                 label: t('active_admin.store.products.form.labels.female_gender')
      form.input :min_age,
                 label: t('active_admin.store.products.form.labels.min_age')
      form.input :max_age,
                 label: t('active_admin.store.products.form.labels.max_age')
      form.input :price,
                 label: t('active_admin.store.products.form.labels.price')
      form.semantic_errors
      form.actions
    end
  end
end
