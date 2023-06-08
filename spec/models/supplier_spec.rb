# frozen_string_literal: true

RSpec.describe Supplier do
  subject(:supplier) { build(:supplier) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
