class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.references :sub_category, null: false
      t.timestamps
    end
  end
end
