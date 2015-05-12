class Booking < ActiveRecord::Base

  belongs_to :flight, class_name: "Flight"
  belongs_to :passenger, class_name: "Passenger"

  has_many :tickets
  has_many :passengers, through: :tickets

  accepts_nested_attributes_for :passengers
  # http://www.slideshare.net/russel_05/rails-form-helpers
  # forgot the accepts nested attributes part for a while... :(


# has_many :patients, through: :appointments right format


  # has_many :passengers




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