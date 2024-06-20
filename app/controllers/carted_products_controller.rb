class CartedProductsController < ApplicationController

  def index
    # render json: {message: "Hello index"}
    # p current_user
    @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render template: "carted_products/index"
  end

  def create
    # render json: {message: "Hello create"}

    @carted_product = CartedProduct.new(
      user_id: current_user.id, 
      product_id: params[:product_id],  
      quantity: params[:quantity],
      status: "carted",
      order_id: nil
      )
    if @carted_product.save
      render template: "carted_products/show"
    else
      render json: {error: @carted_product.errors.full_messages}
    end
  end

end
