class CreateSoldProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :sold_products do |t|
      t.references :product, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
