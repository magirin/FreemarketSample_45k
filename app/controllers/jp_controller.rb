class JpController < ApplicationController
  def index
    @products = Product.where("category_id=1").order("created_at DESC").page(params[:page]).per(4)
    @category = Category.all
  end
end
