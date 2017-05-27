class AddDeliciousPointToVegetableInformations < ActiveRecord::Migration[5.1]
  def change
    add_column :vegetable_informations, :delicious_point, :integer
  end
end
