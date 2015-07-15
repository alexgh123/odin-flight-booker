class FlightsController < ApplicationController
  # def index
  #   @airport_options = Airport.all.map{|a| [a.airport_code, a.id]}
  #   @flights = Flight.all
  # end

  def index
    @flights = Flight.search(params)
    @airport_codes = Airport.all.collect { |a|  [a.airport_code, a.id] }
    @num_passengers = (1..4).to_a.collect { |x| [x, x] }
    @dates = Flight.selectable_dates
    # @dates should be an array of dates, but it can't be just a m/d/y, it has to be a date object
    # so there are two things going on, one i want easy to read dates, but once the date is selected, i want it to be a full fledged date object
  end



    # @flights = Flight.search(params).order(:start_time)
    # @dates = Flight.all.order(:departure_date_time)
    # @dates = @dates.map { |d| d.start_time.strftime("%m/%d/%Y") }
    # @dates.uniq!


end


