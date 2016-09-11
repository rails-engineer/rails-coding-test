class ProductItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  belongs_to :product

  validates :order_id, :item_id, :product_id, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end
