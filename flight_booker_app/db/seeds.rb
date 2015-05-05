# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#<Flight id: nil, created_at: nil, updated_at: nil, origin_code: nil, destination_code: nil, hours: nil, minutes: nil, departure_date_time: nil>




Airport.create!(id: 1,
                airport_code: "DFW",
                airport_name: "Dallas Fort Worth International Airport")
Airport.create!(id: 2,
                airport_code: "NYC",
                airport_name: "New York City Airport")

Airport.create!(id: 3,
                airport_code: "SFO",
                airport_name: "San francisco airport")

Airport.create!(id: 5,
                airport_code: "ORD",
                airport_name: "Chicago ohare")

Airport.create!(id: 4,
                airport_code: "MDW",
                airport_name: "Chicago midway")

# create the flights!

Flight.create!(origin_airport_id: 1,
               destination_airport_id: 2,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 1,
               destination_airport_id: 3,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 1,
               destination_airport_id: 4,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 1,
               destination_airport_id: 5,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)


Flight.create!(origin_airport_id: 2,
               destination_airport_id: 1,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 2,
               destination_airport_id: 3,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 2,
               destination_airport_id: 4,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 2,
               destination_airport_id: 5,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)


Flight.create!(origin_airport_id: 3,
               destination_airport_id: 2,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 3,
               destination_airport_id: 1,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 3,
               destination_airport_id: 4,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 3,
               destination_airport_id: 5,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 4,
               destination_airport_id: 2,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 4,
               destination_airport_id: 3,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 4,
               destination_airport_id: 1,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 4,
               destination_airport_id: 5,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 5,
               destination_airport_id: 2,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 5,
               destination_airport_id: 3,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 5,
               destination_airport_id: 4,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_airport_id: 5,
               destination_airport_id: 1,
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)