# frozen_string_literal: true

RSpec.describe ManufacturerSupplyAgreementPolicy do
  subject { described_class.new(user, record) }

  let(:record) { ManufacturerSupplyAgreement.new }

  describe 'with superadmin permisions' do
    let(:user) { build(:user, :with_superadmin_role) }

    it { is_expected.to permit_all_actions }
  end

  describe 'with admin permisions' do
    let(:user) { build(:user, :with_admin_role) }

    it { is_expected.to permit_all_actions }
  end
end
