# frozen_string_literal: true

ActiveAdmin.register Admin do
  permit_params :email, :phone, :password, :role

  index do
    selectable_column
    column :role
    column :email
    column :phone
    actions
  end

  filter :email
  filter :phone
  filter :role, as: :select, collection: Admin.roles

  form do |f|
    f.inputs do
      f.input :email
      f.input :phone
      f.input :password
      f.input :role
    end
    f.actions
  end
end
