class PassengersController < ApplicationController

  def show
    @passenger = Passenger.find(params[:id])
  end

  def index
    @passengers = Passenger.all
  end


end
