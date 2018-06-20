class UserMailer < ApplicationMailer
  default from: 'pittypat5709@gmail.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://www.gmail.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end