class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])
  end

  def index
    @bookings = Booking.all
  end


end
