require 'rails_helper'

describe ProductItem do
  subject(:product_item) { create(:product_item) }

  it { should belong_to :order }
  it { should belong_to :item }
  it { should belong_to :product }

  it { should validate_presence_of :order_id }
  it { should validate_presence_of :item_id }
  it { should validate_presence_of :product_id }

  it { should validate_numericality_of(:quantity).only_integer.is_greater_than(0) }

  describe '#amount' do
    it 'returns multiplication of quantity and product price' do
      expect(product_item.amount).to eq(product_item.product.price * product_item.quantity)
    end
  end
end
