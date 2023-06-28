# frozen_string_literal: true

RSpec.describe TradeMark do
  subject(:trade_mark) { build(:trade_mark) }

  describe 'associations' do
    it { is_expected.to belong_to(:manufacturer) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
