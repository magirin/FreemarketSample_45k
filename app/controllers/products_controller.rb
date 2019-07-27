class ProductsController < ApplicationController

  def index
    @products = Product.where("category_id=1").order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @product = Product.new
    @product_image = @product.product_images.build
  end

  def create
    # @product = Product.new
    product_params = params_int(set_product_params)
    binding.pry
    Product.create(product_params)
    # ProductImage.create(product_image_params)
    # Product_image.create(set_product_image_params)
    redirect_to root_path, notice: '商品が出品されました'
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
    params.require(:product).permit(:name, 
                                    :description,
                                    :category_id,
                                    :sub_category_id,
                                    :item_id, 
                                    :bland_id,
                                    :size, 
                                    :product_quality,
                                    :shipping_price,
                                    :shipping_way,
                                    :shipping_place,
                                    :shipping_date,
                                    :price,
                                    product_images_attributes: [:id, :product_id, :image, :user_id]).merge(user_id: 1)
  end

  def params_int(product_params)
    product_params.each do |key,value|
      unless key == "name" || key == "description" || key == "product_image" || key == "image"
        product_params[key] = value.to_i
      end
    end
  end

  def product_image_params
    params.require(:product_image).permit({image: []}).merge(user_id: 1).merge(product_id: 1)
  end

end
