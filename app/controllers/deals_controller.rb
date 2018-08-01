class DealsController < ApplicationController
  before_action :set_deal, only: [:edit, :update]

  def show

  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.create(deal_params)
  end

  def edit
  end

  def update
    # @deal = Deal.all.find do |d|
    #   d.buyer_name == params[:deal][:buyer_name]
    # end
    @user = User.find_by(name:params[:deal][:buyer_name])
    @deal.update(buyer_id: @user.id)
    # byebug
    redirect_to profile_path
  end

  private

  def deal_params
    params.require(:deal).permit(:buyer_id, :seller_id, :product_id, :buyer_name)
  end

  def set_deal
    @deal = Deal.find_by(id: params[:id])
  end
end
