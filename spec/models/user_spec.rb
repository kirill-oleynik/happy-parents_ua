# frozen_string_literal: true

RSpec.describe User do
  it { is_expected.to validate_uniqueness_of(:phone) }
  it { is_expected.to have_secure_password }
end
