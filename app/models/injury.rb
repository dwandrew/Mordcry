class Injury < ApplicationRecord
    has_many :warriors_injury
    has_many :warriors, through: :warriors_injury
end
