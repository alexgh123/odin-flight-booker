class PassengersController < ApplicationController

  def show
    @passenger = Passenger.find(params[:id])
  end

  def index
    @passengers = Passenger.all
    respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @passengers }
        format.json { render :json => @passengers }
      end
  end

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
