class CreateBlands < ActiveRecord::Migration[5.0]
  def change
    create_table :blands do |t|
      t.integer :parent_id, null: true
      t.string :name, null: false, index: true
      t.timestamps
    end
  end
end
