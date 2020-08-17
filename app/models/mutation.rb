class Mutation < ApplicationRecord
    has_many :warriors_mutation
    has_many :warriors, through: :warriors_mutation
end
