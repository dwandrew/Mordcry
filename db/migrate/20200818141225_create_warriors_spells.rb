class CreateWarriorsSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :warriors_spells do |t|
      t.integer :warrior_id
      t.integer :spell_id

      t.timestamps
    end
  end
end
