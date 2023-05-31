# frozen_string_literal: true

# Defines user permissions to interact with Admin entity
class AdminPolicy < ApplicationPolicy
  def index?
    user.superadmin? || user.admin?
  end

  def show?
    user.superadmin? || user.admin?
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
