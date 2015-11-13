class AddBrandIdToProducts < ActiveRecord::Migration
  def change
  	#agrego la columna a producto con el atributo brand_id
  	add_column :products, :brand_id, :integer
  end
end
