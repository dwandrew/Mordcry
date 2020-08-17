class CreateMutations < ActiveRecord::Migration[6.0]
  def change
    create_table :mutations do |t|
      t.string :name
      t.integer :cost
      t.string :description

      t.timestamps
    end
  end
end
