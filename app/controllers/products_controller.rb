class ProductsController < ApplicationController

  def index
    @products = Product.where("category_id=1").order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @product = Product.new
  end

  def create
    # @product = Product.new
    binding.pry
    # if @product.create
    #   redirect_to root_path, notice: '商品が出品されました'
    # end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private

  def set_product_params
    params.require(:product)
    # .permit(:name, :description, :category_id, :sub_category_id, :item_id, :bland_id, :size, :product_quality, :shipping_price, :shipping_way, :shipping_place, :shipping_date, :price).merge(user_id: current_user.id)
  end

end
