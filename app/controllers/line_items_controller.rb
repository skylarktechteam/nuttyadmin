class LineItemsController < ApplicationController
		before_action :load_cart_or_redirect_customer

		def create

	product = Product.find(params[:product_id])
	@cart.line_items.build(product: product, quantity: params[:quantity])
	@cart.save
	redirect_to '/cart', notice: "#{product.title} was added to your cart." and return
end

def destroy
		li = LineItem.find(params[:id])
		product  = li.product
		li.delete
		redirect_to '/cart', notice: "#{product.title} was removed from your cart. " and return
	end	

end
