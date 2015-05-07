class PassengersController < ApplicationController

  def show
    @passenger = Passenger.find(params[:id])
  end

  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @passenger = Passenger.create(passenger_params)
    if @passenger.save
      flash[:success] = 'passenger saved'
      redirect_to @passenger
    else
      flash[:failure] = 'passenger not created'
      redirect_to new_passenger_path
    end
  end



  private

    def passenger_params
      params.require(:passenger).permit(:name)
    end

end
