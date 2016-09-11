require 'rails_helper'

describe Order do
  it { should belong_to :product }

  it { should define_enum_for(:status).with(%i(daft confirmed canceled)) }
end
