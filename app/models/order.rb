class Order < ApplicationRecord
  belongs_to :user
  has_many :Carted_Product
  # has_many :orders, through: :carted_products
  def subtotal()
    # fin product_id in products table ->find price * quantity
    subtotal = product.price * quantity
  end

end
