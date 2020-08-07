class Equipment < ApplicationRecord
    has_many :warbands, through: :warbandsequipment
    has_many :warriors, through: :warriorsequipment
end
