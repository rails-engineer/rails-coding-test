class RemoveProductIdFromOrders < ActiveRecord::Migration
  def up
    remove_column :orders, :product_id
  end

  def down
    add_column :order, :product_id, :integer, null: false
  end
end
