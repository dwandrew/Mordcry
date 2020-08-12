class CreateWarriorsSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :warriors_skills do |t|
      t.integer :warrior_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
