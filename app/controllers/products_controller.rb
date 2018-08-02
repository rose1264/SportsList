class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    # byebug
    if params[:category]
      @products = Product.all.select do |product|
         product.category.name == params[:category]
      end
    else
      @products = Product.all
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    @deal = Deal.create(product_id: @product.id, seller_id: current_user.id, buyer_id: current_user.id)
    if @product.valid? && @deal.valid?
      flash[:notice] = "Product successfully created!"
      redirect_to profile_path
    else
      render :new
    end
  end

  def show
    #@product
    @deal = Deal.find_by(product_id: @product.id)

    @like = Like.new


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
    redirect_to profile_path
  end

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :price, :location, :category_id, {:avatars => []}, :category)
  end
end
