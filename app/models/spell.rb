class Spell < ApplicationRecord 
    has_many :warriors_spell
    has_many :warriors, through: :warriors_spell
end
