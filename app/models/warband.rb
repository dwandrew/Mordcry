class Warband < ApplicationRecord
    belongs_to :user
    has_many :warriors
    has_many :warbands_equipment
    has_many :equipment, through: :warbands_equipment

    accepts_nested_attributes_for :warriors
end
