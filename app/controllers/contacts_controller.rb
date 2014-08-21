class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    if @contact.deliver
      redirect_to(root_path, :notice => "Thank you for contacting me. I will reply shortly!")
    else
      redirect_to(root_path, :notice => "Sorry, could not send your message at this time :(")
    end
  end
end
