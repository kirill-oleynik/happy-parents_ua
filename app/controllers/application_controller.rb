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
    { locale: (I18n.locale == I18n.default_locale ? nil : I18n.locale) }
  end
end
