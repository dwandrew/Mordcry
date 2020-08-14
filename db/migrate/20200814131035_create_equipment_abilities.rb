class CreateEquipmentAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment_abilities do |t|
      t.integer :equipment_id
      t.integer :ability_id

      t.timestamps
    end
  end
end
