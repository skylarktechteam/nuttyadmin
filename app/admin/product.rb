ActiveAdmin.register Product do


permit_params :title, :description, :specs, :sku, :price, :image

show do |product|
	attributes_table do
	row :title
	row :sku
	row 'Customers who want to buy this product' do products.carts.collect(&:email).join(", ")
	end
	row :price
	row :description
	row :specs

	end
	active_admin_comments 
end

form html: { enctype: "multipart/form-data" } do |f|
	f.inputs "Product Details" do
		f.input :title
		f.input :sku, label: "SKU", hint: " A unique SKU for this product. Very important!"
		f.input :image, as: :file
		f.input :price, as: :string
		f.input :description
		f.input :specs
			
end
 	f.actions
 
 end
 
end
