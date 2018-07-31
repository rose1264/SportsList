class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully created!"
      redirect_to @product
    else
      render :new
    end
  end

  def show
    #code
  end

  def edit
    #code
  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    category = @product.category.id
    @product.destroy
    redirect_to category_path(category)
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :location, :category_id, {:avatars => []})
  end
end
