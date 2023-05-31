# frozen_string_literal: true

class DeviseCreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      ## Database authenticatable
      t.string :email, null: false
      t.string :phone
      t.integer :role, null: false
      t.string :encrypted_password, null: false

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      # Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      t.timestamps null: false
    end

    add_index :admins, :email,                unique: true
    add_index :admins, :reset_password_token, unique: true
  end
end
