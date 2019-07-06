class ProductsController < ApplicationController

  def index
  end

  def new
    @product = Product.new
  end

  def create
    # binding.pry
    @product = set_product_params
    # if @product.save
    #   redirect_to root, notice: '商品を出品しました'
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
    params.require(:product).permit(:name, :description, :category_id, :sub_category_id, :item_id, :bland_id, :size, :product_quality, :shipping_price, :shipping_way, :shipping_place, :shipping_date, :price)
  end

end
