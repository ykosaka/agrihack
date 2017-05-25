class CreateYasais < ActiveRecord::Migration[5.1]
  def change
    create_table :yasais do |t|
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
