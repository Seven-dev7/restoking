class CartController < ApplicationController
  before_action :set_cart

  def show
    @cart = @cart
    @line_items = @cart.line_items
  end

  def add_to_cart
    product = Product.find params[:product_id].to_i
    @cart.add_product(product)
    redirect_to cart_path(@cart), notice: 'ajouter au panier'
  end

  private

  def set_cart
    @cart = Cart.find current_user.cart.id
  end
end