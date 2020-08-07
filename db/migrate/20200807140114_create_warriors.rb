class CreateWarriors < ActiveRecord::Migration[6.0]
  def change
    create_table :warriors do |t|
      t.string :name
      t.string :type
      t.integer :warband_id
      t.integer :exp
      t.integer :move
      t.integer :strength
      t.integer :toughness
      t.integer :agility
      t.integer :wounds
      t.integer :bravery
      t.string :skills
      t.string :injuries
      t.boolean :active
      t.integer :number

      t.timestamps
    end
  end
end
