class SoldProductsController < ApplicationController

  def buy
    @product = Product.find(params[:id])
  end

  def pay
    @product = Product.where("id=1")
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    charge = Payjp::Charge.create(
      :amount => @product.price,
      :card => params['payjp-token'],
      :currency => 'jpy',
    )
  end

  def index
  end

  def create
  end

  def destroy
  end


end
