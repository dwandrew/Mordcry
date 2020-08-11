class AddCostToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :cost, :integer
  end
end
