class Skill < ApplicationRecord
    has_many :warriors_skill
    has_many :warriors, through: :warriors_skill
end
