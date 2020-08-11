class Armour < ApplicationRecord
    has_many :warbands, through: :warriors
    has_many :warriors_armour
    has_many :warriors, through: :warriors_armour
end
