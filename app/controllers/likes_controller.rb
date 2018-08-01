class LikesController < ApplicationController
  skip_before_action :authorized, only: [:index, :new, :create]


  def index

  end

  def new
    @like = Like.new
  end

  def create

  end

  private

  def like_params
    params.require(:like).permit(:product_id, :user_id)
  end

end
