class UserMailer < ApplicationMailer

    default from: 'manukhalifa@hotmail.com'
       
    def welcome_email(user)
        @user = user 
        @url  = 'http://monsite.fr/login' 
        mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end


    def reset_password_instruction(user)
        @user = user
        mail(to: @user.email, subject: 'Demande de réinitialisation de mot de passe') 
    end

end
