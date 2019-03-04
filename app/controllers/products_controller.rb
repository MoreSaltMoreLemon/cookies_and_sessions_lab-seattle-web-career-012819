class ProductsController < ApplicationController
 
  def index
    @products = current_cart
  end

  def add
    # byebug
    @item = params[:product]
    current_cart << @item
    redirect_to products_path
  end
end