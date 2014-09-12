class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    if @contact.deliver
      flash.keep[:success] = "Thank you for contacting me. I will reply shortly!"
      redirect_to root_path
    else
      flash.keep[:error] = "Sorry, something was wrong with your message."
      redirect_to root_path
    end
  end
end
