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
        format.html { render :index, notice: "Product created" }
      else
        format.html { render :new, alert: "Error to create product" } 
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :value, :restaurant_id)
    end
end
