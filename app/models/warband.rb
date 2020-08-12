class Warband < ApplicationRecord
    validates :name, presence: true, length: { minimum: 4 }
    
    belongs_to :user
    has_many :warriors
    has_many :equipment, through: :warriors

    accepts_nested_attributes_for :warriors

    scope :warband_search, -> (warband) {self.where("warband_type LIKE ?", "%#{warband}%")}
    scope :rating_search, -> (rating) {self.where("warband_rating >= ?", rating)}


end
