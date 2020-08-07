class User < ApplicationRecord
    has_many :warbands
    has_many :warriors, through: :warbands
    has_secure_password
    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end

# @user = User.new(name: "brian", email:"brian@aol.com", password:"sausages")