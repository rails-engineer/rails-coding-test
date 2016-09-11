require 'rails_helper'

describe Product do
  it { should have_many :product_items }
  it { should have_many(:items).through(:product_items) }
end
