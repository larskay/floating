class ContactMailer < ActionMailer::Base
    # default from: "monicamvik@hotmail.com"

  def contact_mail(email, message)
    @email = email
    @message = message
    mail(from: email, to: "monicamvik@hotmail.com", subject: 'Meliding fra flytetank siden')
  end
end
