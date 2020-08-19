class Spell < ApplicationRecord 
    has_many :warriors_spell
    has_many :warriors, through: :warriors_spell

    scope :category_search, -> (category) {self.where("spell_warband LIKE ?", "%#{category}%")}
end
