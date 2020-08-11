class CreateWarbands < ActiveRecord::Migration[6.0]
  def change
    create_table :warbands do |t|
      t.string :name
      t.string :type
      t.integer :user_id
      t.integer :gold_crowns, default: 500
      t.integer :warband_rating, default: 0
      t.integer :wyrdstone_shards, default: 0

      t.timestamps
    end
  end
end
