class ProductsController < ApplicationController
  def allproducts
    @products = Product.all
    #render json:{mesg: "all products"}
    render template: "products/index"
  end
  def oneproduct
    #render json:{msg: "one product"}
    @product = Product.first
    render template: "products/show"
  end
end
