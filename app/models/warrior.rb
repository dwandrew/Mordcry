class Warrior < ApplicationRecord
    belongs_to :warband
    has_many :equipment, through: :warriorsequipment
end
