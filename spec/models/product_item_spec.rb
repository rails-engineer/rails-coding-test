require 'rails_helper'

describe ProductItem do
  it { should belong_to :order }
  it { should belong_to :item }
  it { should belong_to :product }
end
