class ContactMailer < ActionMailer::Base
    default from: "larsakay77@gmail.com"

  def contact_mail(email, message)
    @email = email
    @message = message
    mail(from: "larsakay77@gmail.com", to: "monicamvik@hotmail.com", subject: 'Meliding fra flytetank siden')
  end
end
