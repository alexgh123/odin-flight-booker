class Flight < ActiveRecord::Base
  has_one :airport, foreign_key: "origin_airport_id"
  has_one :airport, foreign_key: "desination_airport_id"
  # destination and origin: !== CANT BE EQUAL





end