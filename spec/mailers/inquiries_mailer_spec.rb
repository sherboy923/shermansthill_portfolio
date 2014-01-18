require "spec_helper"

describe InquiriesMailer do
	describe "new inquiry" do
		let(:inquiry) { mock_model Inquiry, name: 'John Doe', email: 'shermansthill@gmail.com', subject: 'Hello, World!', message: 'This is my message to you.' }
		let(:mail) { InquiriesMailer.new_inquiry(inquiry) }

		it 'renders the subject' do
			mail.subject.should == 'Hello, World!'
		end

		it 'renders the receiver email' do
			mail.to.should == [inquiry.email]
		end

		it 'renders the sender email' do
			mail.from.should == ['noreply@shermansthill.com']
		end
	end
end
