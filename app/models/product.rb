class Product < ActiveRecord::Base
  belongs_to :category
  has_many :product_items
  has_many :items, through: :product_items

  validates :category_id, :name, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
