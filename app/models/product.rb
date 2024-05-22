class Product < ApplicationRecord
  # write methods to change variables 
  validates :name, uniqueness: true
  validates :price, numericality: {greater_than:0}
  #validates :item_count, numericality

  ####### access supplier information using the supplier_id from products table
  belongs_to :supplier
  has_many :images
  ########################################################

  def is_discounted
    if price 
      if price < 10
        p true
      else
        p false
      end
    else
      p "na"
    end
  end

  def tax(p)
    return tax= (0.09 * p).round(2)
  end

  def total
    if price

      t =tax(price)
      total = price + t
      p total
    else
      p "na"
    end
  end
end
