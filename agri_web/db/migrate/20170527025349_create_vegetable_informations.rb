class CreateVegetableInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :vegetable_informations do |t|
      t.integer :vegetable_id
      t.integer :market_id
      (1..12).to_a.each do |num|
        t.integer "#{num}_month_price"
        t.integer "#{num}_month_quantity"
      end
      t.integer :total_price
      t.integer :average_price
      t.timestamps
    end
  end
end
