class CreateVegetableInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :vegetable_informations do |t|
      t.integer :vegetable_id
      t.integer :market_id
      t.integer :month
      t.integer :price
      t.integer :quantity
      t.timestamps
    end
  end
end
