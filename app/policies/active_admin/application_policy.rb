# frozen_string_literal: true

module ActiveAdmin
  # Main Application Policy to be inhereted from
  class ApplicationPolicy
    attr_reader :user, :record

    def initialize(user, record)
      @user = user
      @record = record
    end

    def index?
      # false
      true
    end

    def show?
      # false
      true
    end

    def create?
      # false
      true
    end

    def new?
      create?
    end

    def update?
      # false
      true
    end

    def edit?
      update?
    end

    def destroy?
      # false
      true
    end

    # For 'Delete selected' batch_action
    def destroy_all?
      # false
      true
    end

    class Scope
      attr_reader :user, :scope

      def initialize(user, scope)
        @user = user
        @scope = scope
      end

      def resolve
        scope.all
      end
    end
  end
end
