# frozen_string_literal: true

# Permitted locales available for the application
I18n.available_locales = :en

# Set default locale to something other than :en
I18n.default_locale = :en

# Lookup for locales in directories too
I18n.load_path += Dir[Rails.root.join('config/locales/**/*.yml')]
