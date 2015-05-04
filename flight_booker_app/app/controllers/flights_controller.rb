class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all

  end


end
