class ChangePriceToProducts < ActiveRecord::Migration[7.1]
  def change
    change_column :products, :price, "numeric USING CAST(price As numeric)"
    change_column :products, :price, :decimal, precision:7, scale:2
  end
end
