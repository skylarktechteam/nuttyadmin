class CartController < ApplicationController

	before_action :load_cart_or_redirect_customer

def index
	@title = "Your Cart"
	
end

#private method is only called internally (apply only in this controller not to another) 
#this is ok for Q add
end
