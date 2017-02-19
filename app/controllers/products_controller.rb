class ProductsController < ApplicationController
  def index
    @products = Product.where(:is_hidden =>false)
  end

  def show
    @product = Product.find(params[:id])


  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "succss"
    else
      flash[:warning] ="已加入"
    end
  redirect_to :back
  end

  def protect_them
    @product = Product.find(params[:id])
    @product.protect_them = true
    @product.save
    redirect_to :back
    flash[:notice] ="test"
  end
end
