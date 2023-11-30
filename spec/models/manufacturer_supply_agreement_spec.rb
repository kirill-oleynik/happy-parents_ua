# frozen_string_literal: true

RSpec.describe ManufacturerSupplyAgreement do
  subject(:agreement) { described_class.new }

  describe 'associations' do
    it { is_expected.to belong_to(:manufacturer) }
    it { is_expected.to belong_to(:supplier) }
  end
end
