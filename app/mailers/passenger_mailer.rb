class PassengerMailer < ApplicationMailer
  default from: 'peterabah11@gmail.com'

  def thank_you_email
    @booking = params[:booking]
    @passengers = @booking.passengers
    mail(to: @passengers.pluck(:email), subject: 'Thanks For Booking')
  end
end
