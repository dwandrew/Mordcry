class CreateSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :spells do |t|
      t.string :spell_name
      t.integer :spell_diff
      t.string :description
      t.string :spell_warband

      t.timestamps
    end
  end
end
