class UserMailer < ApplicationMailer
  default form: 'notifications@example.com'

  def welcome_email(uesr)
    @user = UserMailer
    @url = 'https://agile-cove-84334.herokuapp.com/'
    mail(to: @user.email, subject: 'Monologueにご登録いただきありがとうございます！')
  end
end
