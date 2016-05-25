class BookingsController < ApplicationController
  def show
  end
  def create
    email = params[:email]
    name = params[:navn]
    tlf = params[:tlf]
    time_of_day = params[:kveld] || params[:dagtid]
    days = params[:dager]
    time = params[:klokkeslett]
    @message = "Hei Monica, Jeg har gjerne lyst å bestille time hos deg<br>.
                Mitt navn er #{name}<br>
                email: #{email}
                tlf: #{tlf}<br>
                kan på #{time_of_day}<br>
                dager som passer meg er #{days}<br>
                og ønsker klokken #{time}<br><br>
                Mvh #{name}".html_safe
    ContactMailer.contact_mail(email, @message).deliver
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Melding ble sendt.' }
      format.json { head :no_content }
    end
  end
end

