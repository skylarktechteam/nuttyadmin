class Product < ActiveRecord::Base
	validates :title, :sku, :price, presence: true
	validates :price, numericality: true
end
