# frozen_string_literal: true

RSpec.describe Supplier do
  subject(:supplier) { build(:supplier) }

  describe 'associations' do
    it { is_expected.to have_many(:manufacturer_supply_agreements).dependent(:destroy) }
    it { is_expected.to have_many(:manufacturers).through(:manufacturer_supply_agreements) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
