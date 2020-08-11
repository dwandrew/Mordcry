class CreateWarriorsArmours < ActiveRecord::Migration[6.0]
  def change
    create_table :warriors_armours do |t|
      t.string :warrior_id
      t.string :armour_id

      t.timestamps
    end
  end
end
