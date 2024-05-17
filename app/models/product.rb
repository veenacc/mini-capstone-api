class Product < ApplicationRecord
  # write methods to change variables 
  def is_discounted
    if price <= 10
      p true
    else
      p false
    end
  end

  def tax(p)
    return tax= (0.09 * p).round(2)
  end

  def total
    t =tax(price)
    total = price + t
    p total
  end
end
