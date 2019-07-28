class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, limit: 40
      t.integer :price, limit: 7
      t.string :size
      t.string :description, limit: 1000
      t.integer :favorite
      t.string :product_quality
      t.integer :shipping_price
      t.integer :shipping_way
      t.integer :shipping_place
      t.integer :shipping_date
      t.integer :product_status
      t.references :user
      t.references :bland
      t.references :category
      t.references :sub_category
      t.references :item
      t.timestamps
    end
  end
end
