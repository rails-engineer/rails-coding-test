class Order < ActiveRecord::Base
  has_many :product_items, dependent: :destroy

  enum status: [:draft, :confirmed, :canceled]

  validates :status, presence: true
end
