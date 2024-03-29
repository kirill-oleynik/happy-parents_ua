# frozen_string_literal: true

RSpec.describe Country do
  subject(:supplier) { build(:country) }

  describe 'associtations' do
    it { is_expected.to have_many(:manufacturers) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
