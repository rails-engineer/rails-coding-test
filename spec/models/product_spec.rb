require 'rails_helper'

describe Product do
  it { should have_many :product_items }
  it { should have_many(:items).through(:product_items) }

  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_numericality_of(:price).is_greater_than(0) }
end
