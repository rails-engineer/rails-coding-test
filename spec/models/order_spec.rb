require 'rails_helper'

describe Order do
  it { should belong_to :customer }
  it { should have_many(:product_items).dependent(:destroy) }

  it { should validate_presence_of :status }
  it { should define_enum_for(:status).with(%i(draft confirmed canceled)) }
end
