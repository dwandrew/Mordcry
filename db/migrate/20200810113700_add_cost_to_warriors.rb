class AddCostToWarriors < ActiveRecord::Migration[6.0]
  def change
    add_column :warriors, :cost, :integer
  end
end
