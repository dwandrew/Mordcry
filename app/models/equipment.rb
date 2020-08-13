class Equipment < ApplicationRecord
    has_many :warbands, through: :warriors

    has_many :warriors_equipment
    has_many :warriors, through: :warriors_equipment

end
