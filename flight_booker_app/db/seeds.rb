# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#<Flight id: nil, created_at: nil, updated_at: nil, origin_code: nil, destination_code: nil>


Flight.create!(origin_code: "DFW",
               destination_code: "NYC")

Flight.create!(origin_code: "SFO",
               destination_code: "NYC")

Flight.create!(origin_code: "DFW",
               destination_code: "NYC")

Flight.create!(origin_code: "SFO",
               destination_code: "NYC")

Flight.create!(origin_code: "DFW",
               destination_code: "NYC")

Flight.create!(origin_code: "SFO",
               destination_code: "MDW")

Flight.create!(origin_code: "ORD",
               destination_code: "NYC")