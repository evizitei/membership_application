ActionMailer::Base.default_url_options = {  
  :host => (Rails.env.production? ? 'bcfdmembership.com' : 'localhost:3000')
}