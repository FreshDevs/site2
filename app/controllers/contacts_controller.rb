def create
  @contact = Contact.new(contact_params)
  
  if @contact.save
    flash[:success] = 'Message sent.'
    redirect_to new_contact_path
  else
    flash[:danger] = 'Error occured, message has not been sent.'
    redirect_to new_contact_path
  end
end

