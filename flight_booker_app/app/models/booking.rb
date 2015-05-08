class Booking < ActiveRecord::Base
  has_many :passengers
  has_many :flights
  accepts_nested_attributes_for :passengers
end
