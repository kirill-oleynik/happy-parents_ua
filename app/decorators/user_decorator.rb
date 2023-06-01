# frozen_string_literal: true

# Decorator for User entity
class UserDecorator < ApplicationDecorator
  include ActionView::Helpers::NumberHelper
  delegate_all

  def phone
    phone = object.phone
    number_to_phone(phone, area_code: true) if phone
  end
end
