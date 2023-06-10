# frozen_string_literal: true

ActiveAdmin.register Manufacturer do
  permit_params :name, :country_id

  index do
    selectable_column
    column :name
    column :country
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :country
    end
    f.actions
  end
end
