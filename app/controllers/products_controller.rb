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
  		redirect_to products_path, notice: "El producto ha sido creado con éxito"
  	else
  		render :new
  	end
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def update  	
  	@product = Product.find(params[:id])
  	if @product.update(product_params)
  		redirect_to products_path, notice: "El producto ha sido modificado con exito"
	else
		render :edit
  	end
  end

  private
  	def product_params
  		params.require(:product).permit(:name, :url, :description)
  	end
end
