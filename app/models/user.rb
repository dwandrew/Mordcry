class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :warbands
  

          def self.from_google(auth)
            data = auth.info
            user = User.where(email: data['email']).first
            unless user
                user = User.create(
                   email: data['email'],
                   provider: auth['provider'],
                   password: Devise.friendly_token[0,20]
                )
            end
            user
            
          end

          

       

end
