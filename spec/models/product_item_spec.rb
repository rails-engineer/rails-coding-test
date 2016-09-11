require 'rails_helper'

describe ProductItem do
  it { should belong_to :order }
  it { should belong_to :item }
  it { should belong_to :product }

  it { should validate_presence_of :order_id }
  it { should validate_presence_of :item_id }
  it { should validate_presence_of :product_id }

  it { should validate_numericality_of(:quantity).only_integer.is_greater_than(0) }
end
