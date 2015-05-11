class CreatePassengerBookings < ActiveRecord::Migration
  def change
    create_table :passenger_bookings, id: false do |t|
      t.references :booking
      t.references :passenger
    end
    add_index :passenger_bookings, [:booking_id, :passenger_id]
    add_index :passenger_bookings, :passenger_id
  end
end

