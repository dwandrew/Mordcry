class Warband < ApplicationRecord
    belongs_to :user
    has_many :warriors
    has_many :warbands_equipments
    has_many :equipment, through: warbands_equipments
end
