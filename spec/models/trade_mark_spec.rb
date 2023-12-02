# frozen_string_literal: true

RSpec.describe TradeMark do
  subject(:trade_mark) { build(:trade_mark) }

  describe 'associations' do
    it { is_expected.to belong_to(:manufacturer).optional }
    it { is_expected.to have_many(:toys) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
