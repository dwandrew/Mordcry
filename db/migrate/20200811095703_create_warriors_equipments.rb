class CreateWarriorsEquipments < ActiveRecord::Migration[6.0]
  def change
    create_table :warriors_equipments do |t|
        t.integer :warrior_id
        t.integer :equipment_id
      t.timestamps
    end
  end
end
