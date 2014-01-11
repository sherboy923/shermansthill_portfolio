class InquiriesMailer < ActionMailer::Base

	default from: "noreply@shermansthill.com"

	def new_inquiry(inquiry)
		@inquiry = inquiry
		mail(to: "shermansthill@gmail.com", subject: inquiry.subject )
	end

end
