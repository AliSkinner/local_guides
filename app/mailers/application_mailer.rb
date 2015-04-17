class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'

  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Registered")
  end


end
