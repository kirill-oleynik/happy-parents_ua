# frozen_string_literal: true

RSpec.describe Product, type: :model do
  subject(:product) { build(:product) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:code) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_numericality_of(:price), greater_than_or_equal_to: 0 }
    it { is_expected.to validate_uniqueness_of(:code) }
  end
end
