class Warrior < ApplicationRecord
    belongs_to :warband
    has_many :warriors_equipment
    has_many :equipment, through: :warriors_equipment
    has_many :warriors_armour
    has_many :armour, through: :warriors_armour
    has_many :warriors_skill
    has_many :skill, through: :warriors_skill

    accepts_nested_attributes_for :skill
    accepts_nested_attributes_for :equipment
    accepts_nested_attributes_for :armour

    def equipment_attributes=(equipment_params)
        equipment_params.each do |e|
            weapon = Equipment.find_by_id(e[1][:id])
            if weapon
               
                if (!self.equipment.include? (weapon)) && self.warband.gold_crowns > weapon.cost
                    self.equipment << weapon
                    self.warband.gold_crowns-= weapon.cost
                    self.warband.save
                end
        end 
        self.save
        end
        
    end


    def armour_attributes=(armour_params)
        armour_params.each do |a|
            armour = Armour.find_by_id(a[1][:id])
            if armour
          
                if (!self.armour.include? (armour)) && self.warband.gold_crowns > armour.cost
                    self.armour << armour
                    self.warband.gold_crowns-= armour.cost
                    self.warband.save
                end
        end 
        self.save
        end
        
    end

    def skill_attributes=(skill_params)
        skill_params.each do |a|
            skill = Skill.find_by_id(a[1][:id])
            if skill
                if !self.skill.include? (skill)
                    self.skill << skill
                end
            end 
        self.save
        end
        
    end
end
