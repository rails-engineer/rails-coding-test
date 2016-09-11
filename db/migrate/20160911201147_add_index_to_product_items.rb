class AddIndexToProductItems < ActiveRecord::Migration
  def change
    add_index :product_items, [:order_id, :product_id, :item_id], unique: true
  end
end
