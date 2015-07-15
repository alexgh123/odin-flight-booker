class Flight < ActiveRecord::Base

  belongs_to :origin_airport, class_name: "Airport"
  belongs_to :destination_airport, class_name: "Airport"

  has_many :bookings
  # has_many :passengers, through: :bookings




  def self.search(params)
    if params[:search]
      Flight.where(origin_airport_id: params[:from], destination_airport_id: params[:to], departure_date_time: params[:date])
    end
  end

   def self.on_date(date)
    # http://stackoverflow.com/questions/2381718/rails-activerecord-date-between
    where(departure_date_time: date.beginning_of_day..date.end_of_day)
  end

  def self.flight_date_time
    all.collect {|f| [f.formatted_date, f.formatted_time]}.uniq
  end

  def formatted_date
    departure_date_time.to_date.strftime("%m/%d/%y")
  end

  def formatted_time
    departure_date_time.strftime("%I:%M%p")
  end

  def self.selectable_dates
    set = Set.new
    all.each do |flight|
      set << flight.formatted_date
    end
    set.to_a
  end




end