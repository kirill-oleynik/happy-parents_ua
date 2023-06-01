# frozen_string_literal: true

RSpec.describe User do
  subject(:user) { build(:user) }

  describe 'validations' do
    %i[email role password].map do |attribute|
      it { is_expected.to validate_presence_of(attribute) }
    end

    %i[email phone].map do |attribute|
      it { is_expected.to validate_uniqueness_of(attribute).case_insensitive }
    end

    %w[123456789012 783927482627].map do |value|
      it { is_expected.to allow_value(value).for(:phone) }
    end

    %w[123 783927482627555555555 abc456789012 ivalid abc].map do |value|
      it { is_expected.not_to allow_value(value).for(:phone) }
    end

    it { is_expected.to allow_value(Faker::Internet.email).for(:email) }
    it { is_expected.not_to allow_value(Faker::Lorem.word).for(:email) }
  end

  it 'defines expected roles' do
    expect(user).to define_enum_for(:role).with_values(superadmin: 0, admin: 1)
  end
end
