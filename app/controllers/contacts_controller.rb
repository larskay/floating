class ContactsController < ApplicationController
  def show
  end
  def new
    flash[:notice] = "Meldingen ble sent"
    @email = params[:email]
    @message = params[:message]
    ContactMailer.contact_mail(@email, @message).deliver
    redirect_to "/"
  end

  def contact_params
    params.require(:contact).permit(:email, :message)    
  end
end
