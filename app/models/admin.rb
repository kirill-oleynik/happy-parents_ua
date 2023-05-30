# frozen_string_literal: true

# Application Administrator entity
class Admin < ApplicationRecord
  PHONE_FORMAT = /\A\d{12}\z/

  devise :database_authenticatable, :recoverable

  enum role: { superadmin: 0, admin: 1 }

  validates :role, :password, presence: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :phone,
            allow_blank: true,
            uniqueness: { case_sensitive: false },
            format: { with: PHONE_FORMAT }
end
