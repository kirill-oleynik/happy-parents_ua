# frozen_string_literal: true

RSpec.describe UserDecorator do
  let(:user) { build(:user, phone:).decorate }

  describe '#hpne' do
    let(:phone) { '380675555555' }

    it "formats uesr's phone" do
      expect(user.phone).to eq('38(067) 555-5555')
    end
  end
end
