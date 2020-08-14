class Ability < ApplicationRecord

    has_many :equipment_abilities
    has_many :equipment, through: :equipment_abilities 

end
