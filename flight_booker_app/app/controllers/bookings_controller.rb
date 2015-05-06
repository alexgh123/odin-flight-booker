class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def index
    @bookings = Booking.all
    @flight = Flight.find(params[:id])
  end


end
