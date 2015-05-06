class AddPassengerIdAndFlightIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :flight_id, :integer
    add_index :bookings, :flight_id
  end
end


