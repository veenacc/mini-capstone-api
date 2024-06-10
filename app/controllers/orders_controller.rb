class OrdersController < ApplicationController
  before_action :authenticate_user;
  # controller function to create a new order
  def create
    p current_user
    @order =Order.new(
      # user_id: params[:user_id],
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total]

    )
    if @order.save
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
