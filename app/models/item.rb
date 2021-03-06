class Item < ActiveRecord::Base
  has_many :product_items
  has_many :products, through: :product_items

  validates :name, presence: true
end
