class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.thankyou.subject
  #
  def thankyou(user, booking, provider)
    @user = user
    @booking = booking
    @provider = provider

    mail to: user.email, subject: "Su turno fue registrado"
  end

  def cancel(user, booking, provider)
    @user = user
    @booking = booking
    @provider = provider

    mail to: user.email, subject: "Su turno fue cancelado"
  end
end
