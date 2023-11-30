# frozen_string_literal: true

MoneyRails.configure do |config|
  config.default_currency = :uah
  config.include_validations = true
  config.rounding_mode = BigDecimal::ROUND_HALF_UP
  config.locale_backend = :i18n
  I18n.locale = :uk
  config.raise_error_on_money_parsing = false
end
