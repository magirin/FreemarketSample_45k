class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, limit: 40
      t.integer :price, limit: 7
      t.string :size, null: false
      t.string :description, limit: 1000
      t.integer :favorite
      t.string :product_quality, null: false
      t.integer :shipping_price, null: false
      t.integer :shipping_way, null: false
      t.integer :shipping_place, null: false
      t.integer :shipping_date, null: false
      # t.integer :product_status
      t.references :user, null: false
      t.references :category, null: false
      t.references :sub_category
      t.references :item
      t.timestamps
    end
  end
end
