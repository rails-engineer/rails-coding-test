class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :product_items, dependent: :destroy

  enum status: [:draft, :confirmed, :canceled]

  validates :status, presence: true

  def total
    product_items.inject(0) { |a, e| a + e.amount }
  end
end
