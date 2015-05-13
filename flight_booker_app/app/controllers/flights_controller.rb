class FlightsController < ApplicationController
  # def index
  #   @airport_options = Airport.all.map{|a| [a.airport_code, a.id]}
  #   @flights = Flight.all
  # end

  def index
    @flights = Flight.search(params)
    @airport_codes = Airport.all.collect { |a|  [a.airport_code, a.id] }
    @num_passengers = (1..4).to_a.collect { |x| [x, x] }
    @dates = Flight.flight_date_time

  end


        # respond_to do |format|
        #   format.html # index.html.erb
        #   format.xml  { render :xml => @users }
        #   format.json { render :json => @users }
        # end
        # http://www.theodinproject.com/ruby-on-rails/apis-and-building-your-own


end


