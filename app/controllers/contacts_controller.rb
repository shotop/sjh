class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message.'
      redirect_to root_path
    end
  end
end
