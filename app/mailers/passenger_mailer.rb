class PassengerMailer < ApplicationMailer
  default from: 'peterabah11@gmail.com'

  def thank_you_email
    @passenger = params[:passenger]
    @url = 'http://localhost:3000'
    mail(to: @passenger.email, subject: 'Thanks For Booking')
  end
end
