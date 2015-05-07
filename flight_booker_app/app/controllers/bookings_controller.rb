class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:flight_id])unless params[:flight_id].nil?
    @num_passengers = params[:num_passengers]
    @origin_airport =  Airport.find(@flight.origin_airport_id).airport_name
    @destination_airport = Airport.find(@flight.destination_airport_id).airport_name
    @num_passengers.to_i.times { @booking.passengers.build }
    redirect_to root_path if params[:flight_id].nil?
  end



  def index
    @bookings = Booking.all
  end

   def create
    @booking = Booking.create(booking_params)
    # @event = Event.find(params[:event_id])
    if @booking.save
      flash[:success] = "booking created!"
      redirect_to @booking
    else
      flash[:failure] = "you are an idiot AND didn't create a booking"
      redirect_to new_booking_path
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id)
    end


end
