class Product < ActiveRecord::Base
	validates :title, :sku, :price, presence: true
	validates :price, numericality: true
	has_and_belongs_to_many :carts


	#gems

# for paper clip
	has_attached_file :image,  default_url: "/images/:style/missing.png"

# for FrindlyId
	extend FriendlyId
	friendly_id :title, use: [:slugged, :finders]


#for 
end
