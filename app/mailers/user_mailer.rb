class UserMailer < ApplicationMailer
  default from: 'er.contreras@hotmail.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://localhost:5000/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
