class Warrior < ApplicationRecord
    belongs_to :warband
    has_many :warriors_equipment
    has_many :equipment, :through => :warriors_equipment
    has_many :armour
    has_many :armour, through: :warriors_armour

    accepts_nested_attributes_for :equipment
    accepts_nested_attributes_for :armour

    def equipment_attributes=(equipment_params)
        equipment_params.each do |e|
            weapon = Equipment.find_by_id(e[1][:id])
            if weapon
                # binding.pry
                if !self.equipment.include? (weapon) && self.warband.gold_crowns > weapon.cost
                    self.equipment << weapon
                    self.warband.gold_crowns-= weapon.cost
                    self.warband.save
                end
        end 
        self.save
        end
        
    end
end
