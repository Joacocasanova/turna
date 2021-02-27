# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/thankyou
  def thankyou
    user = User.first
    
    #UserMailer.with(user: user).thankyou
    UserMailer.thankyou(user)
  end
end
