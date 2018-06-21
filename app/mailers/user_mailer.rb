class UserMailer < ApplicationMailer
  default from: 'bratcamp@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://www.bratcamp.com'
    mail(to: @user.email, subject: 'Thanks for registering for Brat Camp!')
  end
end