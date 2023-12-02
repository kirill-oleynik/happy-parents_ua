# frozen_string_literal: true

# Application User entity (management)
class User < ApplicationRecord
  include RanSackableAttributable

  PHONE_FORMAT = /\A\d{12}\z/

  devise :database_authenticatable, :recoverable, :trackable

  enum role: { superadmin: 0, admin: 1 }

  validates :role, :password, presence: true

  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            format: { with: URI::MailTo::EMAIL_REGEXP }

  # rubocop:disable Rails/UniqueValidationWithoutIndex
  validates :phone,
            allow_blank: true,
            uniqueness: { case_sensitive: false },
            format: { with: PHONE_FORMAT }
  # rubocop:enable Rails/UniqueValidationWithoutIndex
end
