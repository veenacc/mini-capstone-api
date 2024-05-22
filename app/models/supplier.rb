class Supplier < ApplicationRecord
  ####### access products information of a particular supplier #######
  has_many :products
  ########################################################

end
