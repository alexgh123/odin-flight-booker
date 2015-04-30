# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#<Flight id: nil, created_at: nil, updated_at: nil, origin_code: nil, destination_code: nil, hours: nil, minutes: nil, departure_date_time: nil>


Flight.create!(origin_code: "DFW",
               destination_code: "NYC",
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_code: "SFO",
               destination_code: "NYC",
               hours: 2,
               minutes: 2,
               departure_date_time: Time.zone.now)

Flight.create!(origin_code: "DFW",
               destination_code: "NYC",
               hours: 3,
               minutes: 3,
               departure_date_time: Time.zone.now)

Flight.create!(origin_code: "SFO",
               destination_code: "NYC",
               hours: 9,
               minutes: 22,
               departure_date_time: Time.zone.now)

Flight.create!(origin_code: "DFW",
               destination_code: "NYC",
               hours: 1,
               minutes: 9,
               departure_date_time: Time.zone.now)

Flight.create!(origin_code: "SFO",
               destination_code: "MDW",
               hours: 8,
               minutes: 7,
               departure_date_time: Time.zone.now)

Flight.create!(origin_code: "ORD",
               destination_code: "NYC",
               hours: 2,
               minutes: 5,
               departure_date_time: Time.zone.now)