class CreateWarriorsMutations < ActiveRecord::Migration[6.0]
  def change
    create_table :warriors_mutations do |t|
      t.integer :warrior_id
      t.integer :mutation_id

      t.timestamps
    end
  end
end
