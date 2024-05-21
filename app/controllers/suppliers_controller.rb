class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    # render json:{mesg: "all suppliers"}
    render template: "suppliers/index"
  end

  def show
    # render json:{msg: "one product"}
    @supplier = Supplier.find_by(id: params[:id])
    render template: "suppliers/show"
  end
end
