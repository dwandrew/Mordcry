class WarriorsSpell < ApplicationRecord
    belongs_to :warrior 
    belongs_to :spell
end
