class CreateWarriorsInjuries < ActiveRecord::Migration[6.0]
  def change
    create_table :warriors_injuries do |t|
      t.integer :warrior_id
      t.integer :injury_id

      t.timestamps
    end
  end
end
