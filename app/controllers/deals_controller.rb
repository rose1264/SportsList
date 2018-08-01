class DealsController < ApplicationController
  # TODO: create deal with session user #

  def show

  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.create(deal_params)
  end


  private

  def deal_params
    params.require(:deal).permit(:buyer_id, :seller_id, :product_id)
  end
end
