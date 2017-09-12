class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contacts_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: 'Contact was successfully created.' }
        NoticeMailer.sendmail_contact(@contact).deliver
        NoticeMailer.sendmail_contactadmin(@contact).deliver        
      else
        format.html { render :new }
      end
    end
  end

  def confirm
    @contact = Contact.new(contacts_params)
    render :new if @contact.invalid?
  end

  private
    def contacts_params
      params.require(:contact).permit(:name, :email, :content)
    end

end
