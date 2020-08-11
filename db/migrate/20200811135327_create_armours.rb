class CreateArmours < ActiveRecord::Migration[6.0]
  def change
    create_table :armours do |t|
      t.string :name
      t.integer :soak
      t.integer :agility_penalty
      t.string :abilities
      t.integer :cost

      t.timestamps
    end
  end
end
