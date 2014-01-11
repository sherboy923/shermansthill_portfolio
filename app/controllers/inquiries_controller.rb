class InquiriesController < ApplicationController

    def new
        @inquiry = Inquiry.new
    end

    def create
        @inquiry = Inquiry.new(params[:inquiry])

        if @inquiry.valid?
            InquiriesMailer.new_inquiry(@inquiry).deliver!
            flash[:success] = "Your email was successfully sent!"
            redirect_to contact_path
        else
            render :new
        end
    end
end