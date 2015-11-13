class WelcomeController < ApplicationController
	before_action :load_data, only: [:index,:brand, :category ]
	before_action :load_products, only: [:index, :brand, :category]
	
  def index
    @products = Product.all
  end

 #consulta trae las marcas q esten relacionas al producto
 def brand
   @products = Product.where(brand_id: params[:brand_id])
    render 'index'
 end

  def category
    @products = Product.includes(:categories).where(categories: {id: params[:category_id]})
    render 'index'
  end

#metodo para cargar dropdown de la barra de navegacion
 # def brand
 #	@brands = Brand.all
 #end

  def add_to_cart
    @product = Product.find(params[:id])
    if !session[:cart]
      session[:cart] = []
    end
    session[:cart] << @product.id
    redirect_to root_path
  end

  def remove_from_cart
    session[:cart].delete(params[:id].to_i)
    redirect_to root_path
  end

  protected
#ordeno las marcas por orden alfabetico
  def load_data
    @brands = Brand.order(:name).all
    @category = Category.order(:name).all
  end

  
  
end
