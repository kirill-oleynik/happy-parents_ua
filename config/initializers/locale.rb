# frozen_string_literal: true

I18n.available_locales = %i[uk ru]
I18n.default_locale = :uk
I18n.load_path += Dir[Rails.root.join('config/locales/**/*.yml')]
