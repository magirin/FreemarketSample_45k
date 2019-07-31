class PurchaseController < ApplicationController
  require 'payjp'

  def index
    @product = Product.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    @product = Product.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    Payjp::Charge.create(
    amount: @product.price,
    customer: card.customer_id,
    currency: 'jpy',
  )
    redirect_to done_purchase_index_path(@product, id: @product.id)
  end

  def done
    @product = Product.find(params[:id])
    @product.update_attribute(:purchasedflag, "1")
  end
end
