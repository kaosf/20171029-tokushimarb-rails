require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "validation" do
    let(:item) { FactoryBot.build :item }
    subject { item }
    it { is_expected.to be_valid }
    context "name is empty" do
      before { item.name = '' }
      it { is_expected.to be_invalid }
    end
    context "price is negative" do
      before { item.price = -1 }
      it { is_expected.to be_invalid }
    end
  end
end
