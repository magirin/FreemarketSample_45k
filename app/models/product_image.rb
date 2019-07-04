class ProductImage < ApplicationRecord

    belongs_to :product
    belongs_to :user
end
