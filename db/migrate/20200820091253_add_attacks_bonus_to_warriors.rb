class AddAttacksBonusToWarriors < ActiveRecord::Migration[6.0]
  def change
    add_column :warriors, :close_combat_attacks_bonus, :integer, default: 0
    add_column :warriors, :ranged_attacks_bonus, :integer, default: 0
    add_column :warriors, :close_combat_damage_bonus, :integer, default:0
    add_column :warriors, :ranged_damage_bonus, :integer, default:0
  end
end
