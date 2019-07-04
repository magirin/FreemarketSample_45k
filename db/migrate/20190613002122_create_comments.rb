class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment, null: false, limit: 1000
      t.references :user, null: false
      t.references :product, null: false
      t.timestamps
    end
  end
end
