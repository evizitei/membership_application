class NotificationsMailer < ActionMailer::Base
  default :from => "no-reply@bcfdmo.com"
  
  def new_application(app)
    emails = User.subscribed_to_notifications.all.map(&:email)
    mail(:to => emails, :subject => "New Membership Application")
  end
  
  def open_position(position)
    emails = position.waiting_list
    @position = position.name
    mail(:to => emails, :subject => "BCFPD Open Position")
  end
end
