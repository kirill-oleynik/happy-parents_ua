# frozen_string_literal: true

class ApplicationController < ActionController::Base
  around_action :set_locale

  private

  def set_locale(&)
    locale = locale_from_url || I18n.default_locale
    I18n.with_locale(locale, &)
  end

  def locale_from_url
    locale = params[:locale]
    return locale if I18n.available_locales.map(&:to_s).include?(locale)
  end

  def default_url_options
    { locale: (current_locale == I18n.default_locale ? nil : current_locale) }
  end

  def current_locale
    @current_locale ||= current_locale
  end
end
