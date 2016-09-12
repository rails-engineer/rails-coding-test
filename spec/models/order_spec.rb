require 'rails_helper'

describe Order do
  subject(:order) { create(:order) }

  it { should belong_to :customer }
  it { should have_many(:product_items).dependent(:destroy) }

  it { should validate_presence_of :status }
  it { should define_enum_for(:status).with(%i(draft confirmed canceled)) }

  describe '#total' do
    it 'returns sum of all product items' do
      expect(order.total).to eq(order.product_items.inject(0) { |a, e| a + e.amount })
    end
  end
end
