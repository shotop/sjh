class AboutController < ApplicationController
  def index
    @contact = Contact.new
  end
end
