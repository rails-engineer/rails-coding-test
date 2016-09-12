require 'rails_helper'

RSpec.describe Customer, type: :model do
  it { should have_many :orders }

  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
end
