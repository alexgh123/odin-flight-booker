class PassengersController < ApplicationController


  def new
    @passenger = Passenger.new
    @flight = Flight.find(params[:flight_id])
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
