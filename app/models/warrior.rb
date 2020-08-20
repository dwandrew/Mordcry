class Warrior < ApplicationRecord
    validates :move, :strength, :toughness, :agility, :bravery, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to:10 }
   
    belongs_to :warband
    has_many :warriors_equipment
    has_many :equipment, through: :warriors_equipment
    has_many :warriors_armour
    has_many :armour, through: :warriors_armour
    has_many :warriors_skill
    has_many :skill, through: :warriors_skill
    has_many :warriors_mutation
    has_many :mutations, through: :warriors_mutation
    has_many :warriors_injury
    has_many :injury, through: :warriors_injury
    has_many :warriors_spell
    has_many :spell, through: :warriors_spell

    accepts_nested_attributes_for :skill
    accepts_nested_attributes_for :equipment
    accepts_nested_attributes_for :armour
    accepts_nested_attributes_for :mutations
    accepts_nested_attributes_for :injury
    accepts_nested_attributes_for :spell

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
                if skill.name == "Arcane Lore"
                    self.skill << Skill.find_by_name("Spellcaster")
                end
                end

            end 
        self.save
        end
        
    end

    def mutations_attributes=(mutation_params)
        mutation_params.each do |a|
            mutation = Mutation.find_by_id(a[1][:id])
            if mutation
                if (!self.mutations.include? (mutation)) && self.warband.gold_crowns > mutation.cost
                    self.mutations << mutation
                    self.warband.gold_crowns-= mutation.cost
                    self.warband.save
                    if mutation.name == "Great Claw"
                        self.equipment << Equipment.find_by_name("Great Claw")
                    elsif mutation.name == "Scorpion Tail"
                        self.equipment << Equipment.find_by_name("Scorpion Tail")
                    end 
                end
            end 
        self.save
        end
        
    end

    def injury_attributes=(injury_params)
        injury_params.each do |a|
            injury = Injury.find_by_id(a[1][:id])
            if injury
                    self.injury << injury
            end 
        self.save
        end
        
    end

    def spell_attributes=(spell_params)
        
        spell_params.each do |a|
            spell = Spell.find_by_id(a[1][:id])
            if spell
                if !self.spell.include? (spell)
                    self.spell << spell
                    if spell.spell_name == "Righteous Hammer"
                    self.equipment << Equipment.find_by_name("Righteous Hammer")
                    end
                end
            end
        self.save
        end
        
    end



end
