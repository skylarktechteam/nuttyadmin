class LineItemsController < ApplicationController
		before_action :load_cart_or_redirect_customer

		def create

	product = Product.find(params[:product_id])
	if line_item = @cart.line_items.find { |li| li.product_id == product.id }
	line_item.quantity += params[:quantity].to_i
	else
	line_item =LineItem.new(cart: @cart, product: product, quantity: params[:quantity])
end
line_item.save

	redirect_to '/cart', notice: "#{product.title} was added to your cart." and return
end

def destroy
		li = LineItem.find(params[:id])
		product  = li.product
		li.delete
		redirect_to '/cart', notice: "#{product.title} was removed from your cart. " and return
	end	

end
