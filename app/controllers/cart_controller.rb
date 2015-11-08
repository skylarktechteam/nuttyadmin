class CartController < ApplicationController

	before_action :load_cart_or_redirect_customer

def index
	@title = "Your Cart"
	

end

def create

	product = Product.find(params[:product_id])
	@cart.line_items.build(product: product, quantity: params[:quantity])
	@cart.save
	redirect_to '/cart', notice: "#{product.title} was added to your cart." and return
	end

#private method is only called internally ( apply only in this controller not to another) 


end
