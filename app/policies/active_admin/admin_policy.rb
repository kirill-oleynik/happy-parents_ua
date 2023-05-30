# frozen_string_literal: true

module ActiveAdmin
  # Describes user's permitions to interact with Admin entity
  class AdminPolicy < ApplicationPolicy
    def index?
      true
    end

    def show?
      true
    end

    Scope = Struct.new(:user, :scope) do
      def resolve
        scope
      end
    end
  end
end
