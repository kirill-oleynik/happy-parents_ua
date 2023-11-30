# frozen_string_literal: true

# Defines user permissions to interact with Toy entity
class ToyPolicy < ApplicationPolicy
  def index?
    admin_permissions?
  end

  def show?
    admin_permissions?
  end

  def create?
    admin_permissions?
  end

  def update?
    admin_permissions?
  end

  def destroy?
    admin_permissions?
  end
end
