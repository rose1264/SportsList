class LikesController < ApplicationController
  skip_before_action :authorized, only: [:index, :new, :create, :destroy]


  def index

  end

  def new
    @like = Like.new
  end

  def create
    product_id = params[:like][:product_id]
    user_id = current_user.id
    @like = Like.create(product_id: product_id, user_id: user_id)
    redirect_to product_path(product_id)
  end

  def destroy
    product_id = params[:like][:product_id]
    user_id = current_user.id
    @like = Like.find_by(product_id: product_id, user_id: user_id).destroy
    redirect_to product_path(product_id)
  end

  private

  def like_params
    params.require(:like).permit(:product_id, :user_id)
  end

end
