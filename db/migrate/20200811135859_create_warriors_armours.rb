class CreateWarriorsArmours < ActiveRecord::Migration[6.0]
  def change
    create_table :warriors_armours do |t|
      t.integer :warrior_id
      t.integer :armour_id

      t.timestamps
    end
  end
end
