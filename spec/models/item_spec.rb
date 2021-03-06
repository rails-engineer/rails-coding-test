require 'rails_helper'

describe Item do
  it { should have_many :product_items }
  it { should have_many(:products).through(:product_items) }

  it { should validate_presence_of :name }
end
