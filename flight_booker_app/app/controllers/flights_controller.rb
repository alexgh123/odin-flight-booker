class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params[:search])
    @airports = Airport.all

  end


end
