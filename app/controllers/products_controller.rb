class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end
  def new
  	@product = Product.new
  end
  
  def create
  	#params = {product:{ name: "..."....}, ...}
  	@product = Product.new(product_params)
  	if @product.save
  		#flash[:notice] = "El producto ha sido creado con éxito"
  		redirect_to '/products', notice: "El producto ha sido creado con éxito"
  	else
  		render :new
  	end
  end

  def show
  	@product = Product.find(params[:id])
  end

  private
  	def product_params
  		params.require(:product).permit(:name, :url, :description)
  	end
end
