class NotificationsMailer < ActionMailer::Base
  default :from => "no-reply@bcfdmo.com"
  
  def new_application(app)
    emails = User.subscribed_to_notifications.all.map(&:email)
    mail(:to => emails, :subject => "New Membership Application")
  end
end
