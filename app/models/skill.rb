class Skill < ApplicationRecord
    has_many :warriors_skill
    has_many :warriors, through: :warriors_skill

    scope :category_search, -> (category) {self.where("skill_category LIKE ?", "%#{category}%")}
    scope :name_search, -> (name) {self.where("name LIKE ?", "%#{name}%")}

end
