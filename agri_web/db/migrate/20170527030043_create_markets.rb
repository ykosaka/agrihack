class CreateMarkets < ActiveRecord::Migration[5.1]
  def change
    create_table :markets do |t|
      t.string :name
      t.integer :delivery_fee

      t.timestamps
    end
  end
end
