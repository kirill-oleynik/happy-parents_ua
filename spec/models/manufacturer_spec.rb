# frozen_string_literal: true

RSpec.describe Manufacturer do
  subject(:supplier) { build(:manufacturer) }

  describe 'associations' do
    it { is_expected.to belong_to(:country) }
    it { is_expected.to have_many(:manufacturer_supply_agreements).dependent(:destroy) }
    it { is_expected.to have_many(:suppliers).through(:manufacturer_supply_agreements) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
