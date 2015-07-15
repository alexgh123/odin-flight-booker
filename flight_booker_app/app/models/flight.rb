class Flight < ActiveRecord::Base

  belongs_to :origin_airport, class_name: "Airport"
  belongs_to :destination_airport, class_name: "Airport"

  has_many :bookings
  # has_many :passengers, through: :bookings




  def self.search(params)
    if params[:search]
      Flight.where(origin_airport_id: params[:from], destination_airport_id: params[:to],departure_date_time: special_date(params[:date]).beginning_of_day..special_date(params[:date]).end_of_day)
      # then further restrict the flights so that only flights on the date param are passed
    end
  end

  # Flight.where(origin_airport_id: params[:from], destination_airport_id: params[:to],departure_date_time: special_date("05/05/15").beginning_of_day..special_date("05/05/15").end_of_day)

  # Comment.where(:created_at => @selected_date.beginning_of_day..@selected_date.end_of_day)

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
    # first use of a set object! woo
    # https://stackoverflow.com/questions/14004325/add-element-to-an-array-if-its-not-there-already
    all.each do |flight|
      set << flight.formatted_date
    end
    set.to_a
  end

  def self.special_date(date)
    # from: mm/dd/yy
    # to: dd/mm/yyyy

    datez = "#{date[3..4]}/#{date[0..1]}/20#{date[6..7]}"

    DateTime.parse(datez)
  end




end