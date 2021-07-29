class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])

    @booking = Booking.new
    params[:passengers_no].times { @booking.passengers.build }
  end
end
