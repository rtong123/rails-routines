class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)

    redirect_to '/routines'
  end


private
  def product_params
    params.require(:product).permit(:name, :brand, :purpose)
  end
end
