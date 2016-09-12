class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :product_items, dependent: :destroy

  enum status: [:draft, :confirmed, :canceled]

  validates :status, presence: true
end
