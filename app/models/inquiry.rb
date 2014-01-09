class Inquiry
	extend ActiveModel::Naming
	include ActiveModel::Conversion
	include ActiveModel::Validations
	
	attr_accessor :name, :email, :subject, :message

	validates :name, :email, :subject, :message, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, format: { with: VALID_EMAIL_REGEX }
	
	validates :message, length: { minimum: 10, maximum: 1000 }
	
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