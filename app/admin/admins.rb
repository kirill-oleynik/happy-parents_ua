# frozen_string_literal: true

ActiveAdmin.register Admin do
  permit_params :email, :phone, :password, :role

  index do
    selectable_column
    column :role
    column :email
    column :phone
    column :current_sign_in_at
    column :sign_in_count
    actions
  end
  # show do
  #   attributes_table do
  #     row :role
  #     row :email
  #     row :phone
  #     row :current_sign_in_at
  #     row :sign_in_count
  #     row :created_at
  #   end
  # end

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
