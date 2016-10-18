class UsermailerMailer < ApplicationMailer
   default from: 'kkhanna@synopsys.com'
   
   def welcome_email(request)
      @request = 	reqest
      @url  = 		'http://synopsys.com'
      subject       "Welcome to My Awesome Site"
      sent_on       Time.now
      body          {:user => kkhanna, :url => "http://synopsys.com"}
      mail(to: kkhanna@synopsys.com, subject: 'Test Email from Git access request form')
   end
   
end
