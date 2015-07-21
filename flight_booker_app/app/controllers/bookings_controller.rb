class BookingsController < ApplicationController

  def new
    @flight = Flight.find(params[:flight_id])unless params[:flight_id].nil?
    @booking = Booking.new
    params[:num_passengers].to_i.times { @booking.passengers.build }
    @origin_airport =  @flight.origin_airport
    @destination_airport = @flight.destination_airport
    redirect_to root_path if params[:flight_id].nil?
  end



   def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:success] = "booking created!"



      # right now i just decided to pick the first passenger's email but a scenario exists where the person who wants to receive the confirmation email is not the first passenger in the booking

      redirect_to @booking

      PassengerMailer.flight_confirmation_email(@booking.passengers[0], @booking).deliver_now
    else
      flash[:failure] = "you are an idiot AND didn't create a booking"
      redirect_to new_booking_path
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @passenger = Passenger.find(@booking.id)
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end


end
