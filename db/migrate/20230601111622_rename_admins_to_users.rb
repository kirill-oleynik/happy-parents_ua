# frozen_string_literal: true

class RenameAdminsToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table :admins, :users
  end
end
