class CartController < ApplicationController

	before_action :load_cart_or_redirect_customer

def index
	@title = "Your Cart"
	
end

	def complete
		@order = Order.new(customer:current_customer)
		@order.line_items = @cart.line_items
		@order.save
		@cart.delete
		@title = "Your Order is Complete"
	end

#private method is only called internally (apply only in this controller not to another) 
#this is ok for Q add
end
