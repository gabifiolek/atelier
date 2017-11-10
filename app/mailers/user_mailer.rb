class UserMailer < ApplicationMailer
  default from: 'warsztaty@infakt.pl'
  layout 'mailer'

  def confirm_email(user, email)
    @user = user

    mail(to: email, subject: 'Confirm your email address')
  end

  def unsubscribe
  end
end
