# frozen_string_literal: true

# Main application controller to be inherited from with all shared behaviour
class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    I18n.locale = session[:locale] || I18n.default_locale
  end
end
