class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :range
      t.integer :attacks
      t.string :damage
      t.string :abilities
      t.string :description
      t.string :strength

      t.timestamps
    end
  end
end
