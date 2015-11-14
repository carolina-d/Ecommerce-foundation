class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception

  def load_products
    @products_in_cart = Product.where(id: session[:cart])
  end
end
