# frozen_string_literal: true

# phone:string
# password_digest:string (password + password_confirmation)
class User < ApplicationRecord
  has_secure_password
  validates :phone, uniqueness: true
end
