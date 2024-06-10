class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def subtotal()
    # fin product_id in products table ->find price * quantity
    subtotal = product.price * quantity
  end

end
