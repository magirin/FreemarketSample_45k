class ProductsController < ApplicationController

  def index
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create!(set_product_params)
    binding.pry
    if @product.create
      redirect_to root, notice: 'エラー'
    end
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
