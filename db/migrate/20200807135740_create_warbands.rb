class CreateWarbands < ActiveRecord::Migration[6.0]
  def change
    create_table :warbands do |t|
      t.string :name
      t.string :type
      t.integer :user_id
      t.integer :gold_crowns
      t.integer :warband_rating
      t.integer :wyrdstone_shards

      t.timestamps
    end
  end
end
