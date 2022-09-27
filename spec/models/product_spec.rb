# frozen_string_literal: true

RSpec.describe Product, type: :model do
  subject(:product) { build(:product) }

  describe 'validations' do
    %i[code title price_cents slug].map do |attribute|
      it { is_expected.to validate_presence_of(attribute) }
    end
    %i[code slug].map do |attribute|
      it { is_expected.to validate_uniqueness_of(attribute) }
    end
    it { is_expected.to validate_numericality_of(:price_cents).is_greater_than(0) }
    it { is_expected.to validate_numericality_of(:max_age).is_greater_than(0) }
    it { is_expected.to validate_numericality_of(:min_age).is_greater_than_or_equal_to(0) }

    %w[slug slug-1].map do |value|
      it { is_expected.to allow_value(value).for(:slug) }
    end
    %w[slug_1 SLUG SLUG-1 &&&].map do |value|
      it { is_expected.not_to allow_value(value).for(:slug) }
    end
  end
end
