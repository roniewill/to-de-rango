class ProductsController < ApplicationController
  def index
    @products = Product.all.reverse_order
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_url, notice: "Product was successfully created." }
      else
        format.html { render :new, alert: "Error to create product" } 
      end
    end
  end

  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :value, :restaurant_id)
    end
end
