class UserMailer < ApplicationMailer

  def contact_user(details)

    @sender = User.find(details[:new_mail]['user_id'])
    @recipient = User.find(details[:new_mail]['recipient_id'])
    @message = details[:new_mail]['message']

  
  # binding.pry
  mail(:to => @recipient.email, :subject => "Registered")
  # self.contact_user(recipient).deliver
  end


end
