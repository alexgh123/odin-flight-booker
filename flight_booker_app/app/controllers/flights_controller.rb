class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all

    # so in the index item, i need to make airport codes available via the airport id

  end


end
