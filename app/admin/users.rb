# frozen_string_literal: true

ActiveAdmin.register User do
  decorate_with UserDecorator

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
  filter :role, as: :select, collection: User.roles

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
