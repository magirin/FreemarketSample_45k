class ProductImage < ApplicationRecord

    belongs_to :product, inverse_of: :product_image
    belongs_to :user
    mount_uploaders :images, ImageUploader
end
