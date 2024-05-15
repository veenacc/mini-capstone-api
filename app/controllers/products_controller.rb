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

  def create
    # @product = Product.new(name: "plum", 
    #             price:4, 
    #             image_url:"https://www.shutterstock.com/image-photo/      pair-purple-plums-leaf-isolated-260nw-2030688533.jpg", 
                  #description:"red plums")

    @product = Product.new(name: params[:input_name], 
                price: params[:input_price], 
                image_url: params[:input_image_url], 
                description: params[:input_description])

    @product.save
    render template: "products/show"
  end
end
