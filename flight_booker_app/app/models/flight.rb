class Flight < ActiveRecord::Base
  has_one :airport, foreign_key: "origin_airport_id"
  has_one :airport, foreign_key: "desination_airport_id"
  # destination and origin: !== CANT BE EQUAL


  def self.search(params)
    if params[:search]
      Flight.where(origin_airport_id: params[:from], destination_airport_id: params[:to])

    end
  end

   def self.on_date(date)
    # http://stackoverflow.com/questions/2381718/rails-activerecord-date-between
    where(departure_date_time: date.beginning_of_day..date.end_of_day)
  end

  def self.flight_date_time
    all.collect {|f| [f.formatted_date, f.formatted_time]}
  end

  def formatted_date
    departure_date_time.to_date.strftime("%m/%d/%y")
  end

  def formatted_time
    departure_date_time.strftime("%I:%M%p")
  end




end