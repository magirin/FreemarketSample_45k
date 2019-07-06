class JpController < ApplicationController
  def index
    @products = Product.all
  end
end
