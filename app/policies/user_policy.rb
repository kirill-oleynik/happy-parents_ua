# frozen_string_literal: true

# Defines user permissions to interact with User entity
class UserPolicy < ApplicationPolicy
  def index?
    admin_permissions?
  end

  def show?
    admin_permissions?
  end

  def create?
    user.superadmin?
  end

  def update?
    user.superadmin?
  end

  def destroy?
    user.superadmin?
  end
end
