class Flight < ActiveRecord::Base

  belongs_to :origin_airport, class_name: "Airport"
  belongs_to :destination_airport, class_name: "Airport"

  has_many :bookings


  def self.search(params)
    if params[:search]
      Flight.where(origin_airport_id: params[:from], destination_airport_id: params[:to],departure_date_time: search_format_date(params[:date]).beginning_of_day..search_format_date(params[:date]).end_of_day)
    end
  end

  # below:first use of a Set object! woo
  # https://stackoverflow.com/questions/14004325/add-element-to-an-array-if-its-not-there-already

  def self.selectable_dates
    set = Set.new
    all.each do |flight|
      set << flight.formatted_date
    end
    set.to_a
  end

  def formatted_date
    departure_date_time.to_date.strftime("%m/%d/%y")
  end

  def self.search_format_date(date)
    datez = "#{date[3..4]}/#{date[0..1]}/20#{date[6..7]}"
    DateTime.parse(datez)
  end







end