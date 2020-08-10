class AddWarbandTypeToWarriors < ActiveRecord::Migration[6.0]
  def change
    add_column :warriors, :warband_type, :string
  end
end
