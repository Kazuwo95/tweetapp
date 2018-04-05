class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url = 'https://agile-cove-84334.herokuapp.com/'
    mail(to: @user.email, subject: 'Monologueにご登録いただきありがとうございます！')
  end
  
end
