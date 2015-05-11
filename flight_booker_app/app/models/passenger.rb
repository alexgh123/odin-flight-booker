class Passenger < ActiveRecord::Base
  # belongs_to :booking
  # has_many :flights, :through => :bookings
  # has_many :

  # has_many :bookings :through => :tickets

  has_many :tickets
  has_many :bookings, through: :tickets
end
