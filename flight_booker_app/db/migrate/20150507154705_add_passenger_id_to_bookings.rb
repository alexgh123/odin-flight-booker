class AddPassengerIdToBookings < ActiveRecord::Migration
  def change
    add_column :bookings, :passenger_id, :integer
    add_index :bookings, :passenger_id
  end
end


