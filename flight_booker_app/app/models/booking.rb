class Booking < ActiveRecord::Base

  belongs_to :flight, class_name: "Flight"
  belongs_to :passenger, class_name: "Passenger"

  # belongs_to :flight
  # belongs_to :passenger
  # has_one :flight # on flight id?
  # accepts_nested_attributes_for :passengers
end


# class Booking < ActiveRecord::Base
#   belongs_to :flight
#   has_many :tickets
#   has_many :passengers, :through => :tickets
#   accepts_nested_attributes_for :passengers
# end