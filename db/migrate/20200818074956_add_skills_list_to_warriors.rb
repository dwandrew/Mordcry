class AddSkillsListToWarriors < ActiveRecord::Migration[6.0]
  def change
    add_column :warriors, :skills_list, :string
  end
end
