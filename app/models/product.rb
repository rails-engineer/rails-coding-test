class Product < ActiveRecord::Base
  has_many :product_items
  has_many :items, through: :product_items

  validates :name, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
