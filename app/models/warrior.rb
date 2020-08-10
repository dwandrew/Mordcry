class Warrior < ApplicationRecord
    belongs_to :warband
    has_many :equipment, through: :warriorsequipment

    # accepts_nested_attributes_for :warriors
end
