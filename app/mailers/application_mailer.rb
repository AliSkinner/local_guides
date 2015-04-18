class ApplicationMailer < ActionMailer::Base
  default from: "donotreply@local-guides.com"
  layout 'mailer'
end
