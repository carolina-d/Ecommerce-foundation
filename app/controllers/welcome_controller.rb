class WelcomeController < ApplicationController
	before_action :load_data, only: [:index, :brand, :brand_drop]

   def index
    @products = Product.all
   
  end

  #consulta trae las marcas q esten relacionas al producto
  def brand
    @products = Product.where(brand_id: params[:brand_id])
    render 'index'
  end

#metodo para cargar dropdown de la barra de navegacion
  def brand_drop
 	@brands = Brand.all
 end

#ordeno las marcas por orden alfabetico
  def load_data
    @brands = Brand.order(:name).all
    
  end
  
end
