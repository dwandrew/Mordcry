class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :warbands, :type, :warband_type
  end
end
