# frozen_string_literal: true

RSpec.describe Admin do
  describe 'validations' do
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to allow_value(Faker::Internet.email).for(:email) }
    it { is_expected.not_to allow_value(Faker::Lorem.word).for(:email) }
  end
end
