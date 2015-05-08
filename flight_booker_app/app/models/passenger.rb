class Passenger < ActiveRecord::Base
  belongs_to :bookings
  has_many :flights, :through => :bookings
end
