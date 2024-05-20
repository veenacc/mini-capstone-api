class AdditemCountToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :item_count, :integer
  end
end
