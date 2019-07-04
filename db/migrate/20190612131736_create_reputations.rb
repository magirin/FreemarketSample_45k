class CreateReputations < ActiveRecord::Migration[5.0]
  def change
    create_table :reputations do |t|
      t.references :user, null: false
      t.integer :status, null: false
      t.timestamps
    end
  end
end
