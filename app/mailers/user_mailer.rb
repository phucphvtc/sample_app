class UserMailer < ApplicationMailer

 
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end


  # def password_reset
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end

