class WarriorsInjury < ApplicationRecord
    belongs_to :warrior 
    belongs_to :injury
end
