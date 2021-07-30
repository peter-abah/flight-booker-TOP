class FlightsController < ApplicationController
  def index
    @airports = Airport.order(:code)
    @dates = Flight.select(:date).distinct.order(:date)

    if params.key?(:date)
      @flights = Flight.where(to_airport_id: params[:to_airport_id])
                       .where(from_airport_id: params[:from_airport_id])
                       .where(date: params[:date])
      @passengers_no = params[:passengers_no]
    end
  end
end
