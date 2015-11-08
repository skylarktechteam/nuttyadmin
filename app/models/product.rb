class Product < ActiveRecord::Base
	validates :title, :sku, :price, presence: true
	validates :price, numericality: true

# establishes many through relations in a model table line_items
	has_many :line_items
	has_many :carts, through: :line_items


	#gems

# for paper clip
	has_attached_file :image,  default_url: "/images/:style/missing.png"

# for FrindlyId
	extend FriendlyId
	friendly_id :title, use: [:slugged, :finders]


#for 
end
