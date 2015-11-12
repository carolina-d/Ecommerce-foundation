class WelcomeController < ApplicationController
	before_action :load_data, only: [:index, :brand]

   def index
    @products = Product.all
   
  end

  def brand
  	@brands = Brand.all
  	render 'index'
  end

#ordeno las marcas por orden alfabetico
  def load_data
    @brands = Brand.order(:name).all
    
  end
  
end
