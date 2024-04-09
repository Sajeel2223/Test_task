class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end
  
    def create
      @contact = DibcService.add_contact(contact_params)
      if @contact.persisted?
        redirect_to @contact, notice: 'Contact was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def contact_params
      params.require(:contact).permit(:name, :email, :phone)
    end
end
  