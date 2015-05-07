class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
    @origin_airport =  Airport.find(@flight.origin_airport_id).airport_name
    @destination_airport = Airport.find(@flight.destination_airport_id).airport_name
  end

  def index
    @bookings = Booking.all
  end


end
