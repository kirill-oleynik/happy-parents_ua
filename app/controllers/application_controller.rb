# frozen_string_literal: true

# Main application controller to be inherited from with all shared behaviour
class ApplicationController < ActionController::Base
  include Localeable
end
