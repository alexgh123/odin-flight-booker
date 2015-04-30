class AddDepartureDateTimeAndDurationToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :hours, :integer
    add_column :flights, :minutes, :integer
    add_column :flights, :departure_date_time, :datetime
  end
end
