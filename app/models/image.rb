class Image < ApplicationRecord
  ####### multiple urls for each product -> access urls from images table
  
  belongs_to :product
  ########################################################
end
