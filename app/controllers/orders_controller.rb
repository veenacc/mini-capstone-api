class OrdersController < ApplicationController
  before_action :authenticate_user;
  # controller function to create a new order
  def create
    
    carted_product=CartedProduct.where(user_id: current_user.id, status:"carted")

    subtotal=0
    carted_product.each do |cp|
      subtotal+= cp.product.price * cp.quantity
    end
    tax = subtotal * 0.09
    total=subtotal +tax

    @order =Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total

    )
    if @order.save
      
      carted_product.each do |cp|
        cp.update(status: "purchased")
        cp.update(order_id: @order.id)
      end
      render template: "orders/show"
      # render json: {message: "order saved"}
    else
      render json: {error: @order.errors.full_messages}
      # render json: {message: "order not saved"}
    end
  end

  # controller function to show a single order 

  def show
    # render json:{msg: "one order"}
    # @order = Order.find_by(id: params[:id])
    @order = Order.find_by(id: params[:id], user_id: current_user.id)

    # if current_user.id == @order.user_id
    #   render template: "orders/show"
    # else
    #   render json: {message: "buzz off"}
    # end
  end

   # controller function to show all  orders 
  def index
    # p current_user
    # render json:{mesg: "all products"}

    @orders = current_user.orders
    render template: "orders/index"
  end
  
end
