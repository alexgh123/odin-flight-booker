class Booking < ActiveRecord::Base
  has_many :passengers
end
