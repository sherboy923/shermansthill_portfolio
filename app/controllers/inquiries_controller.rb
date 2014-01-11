class InquiriesController < ApplicationController

    def new
        @inquiry = Inquiry.new
    end

    def create
        @inquiry = Inquiry.new(params[:inquiry])

        if @inquiry.valid?
            flash[:success] = "Your email was successfully sent!"
            # InquiriesMailer.new_inquiry(@inquiry).deliver!
            
            redirect_to contact_path #, :flash => { :success => "Your email was successfully sent!" }
        else
            render :new
        end
    end
end