# frozen_string_literal: true

RSpec.describe Toy do
  subject(:toy) { build(:toy) }

  describe 'associations' do
    it { is_expected.to belong_to(:trade_mark) }
  end

  describe 'validations' do
    %i[inventory_number
        manufacturer_title
        purchase_price_cents
        balance_in_warehouse
        slug].each do |attribute|
      it { is_expected.to validate_presence_of(attribute) }
    end

    %i[inventory_number
      manufacturer_title].each do |attribute|
      it { is_expected.to validate_uniqueness_of(attribute).scoped_to(:trade_mark_id).case_insensitive }
    end

    %i[purchase_price_cents retail_price_cents balance_in_warehouse].each do |attribute|
      it { is_expected.to validate_numericality_of(attribute).is_greater_than_or_equal_to(0) }
    end

    describe 'slug' do
      it { is_expected.to validate_uniqueness_of(:slug).case_insensitive }

      %w[
        toy
        игрушка
        цікава-іграшка
        интересный-конструктор
      ].each do |value|
        it { is_expected.to allow_value(value).for(:slug) }
      end

      %w[
        toy-1
        игрушка-1
        іграшка-1
        TOY
        Іграшка
        Игрушка
        цікава_іграшка
      ].each do |value|
        it { is_expected.not_to allow_value(value).for(:slug) }
      end
    end
  end
end
