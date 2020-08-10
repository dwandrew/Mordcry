class AddIsHeroToWarriors < ActiveRecord::Migration[6.0]
  def change
    add_column :warriors, :is_hero, :boolean, default: false
  end
end
