class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    ###PLUGINS###
    has_many :participations
    has_many :events, through: :participations


    ###VALIDATES###


    ###CALLBACKS###
    after_create :welcome_send
    #after_create :new_password_send


    ###METHODS###
    def welcome_send
        UserMailer.welcome_email(self).deliver_now
    end

    def new_password_send
        UserMailer.reset_password_instruction(self).deliver_now
    end
     

end
