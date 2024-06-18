class ProductsController < ApplicationController
  
  before_action :authenticate_admin, only: [:create, :update, :destroy]
  def index
    # p current_user
    @products = Product.all
    # render json:{mesg: "all products"}
    render template: "products/index"
  end

  def show
    #render json:{msg: "one product"}
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
  end

  def create
    #this is hardcoded create statement
    # @product = Product.new(name: "plum", 
    #             price:4, 
    #             image_url:"https://www.shutterstock.com/image-photo/      pair-purple-plums-leaf-isolated-260nw-2030688533.jpg", 
                  #description:"red plums")

    #  Input values are posted from the website and saved into each variable       
    # commas in between variables      
    @product = Product.new(name: params[:name], 
                price: params[:price], 
                # image_url: params[:image_url], 
                description: params[:description],
                supplier_id: params[:supplier_id])
    
    if @product.save
      render template: "products/show"
    else
      render json: {error: @product.errors.full_messages}
    end
  end

  def update
    @product =Product.find_by(id: params[:id])
    @product.name =params[:name] || @product.name # if updated name is not provided, use default or existing 'name' value
    @product.price = params[:price] || @product.price
    # @product.image_url = params[:image_url] || @product.image_url
    @product.description =params[:description] || @product.description
    @product.supplier_id= params[:supplier_id] || @product.supplier_id
    if @product.save
      render template: "products/show"
    else
      render json: {error: @product.errors.full_messages}
    end
    #@product.update( )  -> with commas in between, can update each variable value 
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Deleted #{params[:id]}"}
  end
end
