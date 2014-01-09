class Inquiry
	extend ActiveModel::Naming
	include ActiveModel::Conversion
	include ActiveModel::Validations

	attr_accessor :name, :email, :subject, :body

	validates :name, :email, :subject, :body, :presence => true

	validates :email, :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ }
	
	validates :body, :length => { :minimum => 10, :maximum => 1000 }
	
	def initialize(attributes = {})
		attributes.each do |name, value|
			send("#{name}=", value)			
		end
	end	

	def deliver
		false
	end

	def persisted?
		false
	end
end