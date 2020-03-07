class ContactFormController < ApplicationController
  def new
      @contact_form = ContactForm.new
    end

    def create
      begin
        @contact_form = ContactForm.new(params[:contact_form])
        @contact_form.request = request
        if @contact_form.deliver
          flash.now[:notice] = 'Thank you for your message!'
        else
          flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
          render :new
        end  
      end
    end
end
