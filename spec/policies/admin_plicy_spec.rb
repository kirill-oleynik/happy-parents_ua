# frozen_string_literal: true

RSpec.describe AdminPolicy do
  subject { described_class.new(user, entity) }

  let(:entity) { Admin.new }

  describe 'superadmin permisions' do
    let(:user) { build(:admin, :with_superadmin_role) }

    it { is_expected.to permit_all_actions }
  end

  describe 'with admin permisions' do
    let(:user) { build(:admin, :with_admin_role) }

    it { is_expected.to permit_only_actions(%i[index show]) }
  end
end
