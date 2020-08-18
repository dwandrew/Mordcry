class AddEquipmentListToWarriors < ActiveRecord::Migration[6.0]
  def change
    add_column :warriors, :equipment_list, :string
  end
end
