class ChangeTypeOfColumnPriceToDecimal < ActiveRecord::Migration
  def up
    change_table :products do |t|
      t.change :price, :decimal
    end
  end

  def down
    change_table :products do |t|
      t.change :price, :float
    end
  end
end
