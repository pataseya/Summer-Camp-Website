class UserMailer < ApplicationMailer
  default from: 'bratcamp@gmail.com'
 
  def welcome_email(user)
    @participant = user
    @url  = 'https://www.bratcamp.com'
    mail(to: @participant.parentemail, subject: 'Thanks for registering for Brat Camp!')
  end
end