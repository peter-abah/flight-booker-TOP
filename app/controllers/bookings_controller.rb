class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new

    passengers_no = params[:passengers_no].to_i
    passengers_no.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    @flight = Flight.find(@booking.flight.id)

    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[name email])
  end
end
