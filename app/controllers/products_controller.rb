class ProductsController < ApplicationController
  def index
    @products = Product.all
    #render json:{mesg: "all products"}
    render template: "products/index"
  end
  def show
    #render json:{msg: "one product"}
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end
end
