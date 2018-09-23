class ContactsController < ApplicationController
  def index
    redirect_to new_contact_path
  end
  def new
    @contact = Contact.new
    @contactall = Contact.all
    #@contact = Contats.new(params.require(:contact).permit(:title, :content))

  end
  def create
    param = params.require(:contact).permit(:name,:email,:content)
    @contact = Contact.new(param)
    #@contact = Contact.create(param)
    if @contact.save
      redirect_to new_contact_path
    else
      @contactall = Contact.all
      render 'new'
    end
  end
end
