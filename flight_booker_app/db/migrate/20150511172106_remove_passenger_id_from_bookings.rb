class RemovePassengerIdFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :passenger_id
  end
end
