class ProductsController < ApplicationController
  def new
    @products = []
    5.times do
    @products << Product.new
    end
  end

  def create
    # @product = Product.create(product_params)
    if params.has_key?("product")
      Product.create(product_params(params["product"]))
    else
    params["products"].each do |product|
   if product["brand"] != "" || product["purpose"] != "" || product["shade"] != ""
     Product.create(product_params(product))
       end
  end
end
  redirect_to '/routines'

end

private
  def product_params(my_params)
    my_params.permit(:brand, :purpose, :shade)
    end
  end
