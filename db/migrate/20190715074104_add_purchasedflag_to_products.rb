class AddPurchasedflagToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :purchasedflag, :string
  end
end
