class Ticket < ActiveRecord::Base
  belongs_to :booking
  belongs_to :passenger
  # class

  # belongs_to :booking_id, class_name: "Booking"
  # belongs_to :passenger_id, class_name: "Passenger"


end