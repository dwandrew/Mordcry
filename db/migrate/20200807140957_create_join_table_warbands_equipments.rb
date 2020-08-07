class CreateJoinTableWarbandsEquipments < ActiveRecord::Migration[6.0]
  def change
    create_table :warbands_equipment do |t|
      t.integer :warband_id
      t.integer :equipment_id
    end
  end
end
