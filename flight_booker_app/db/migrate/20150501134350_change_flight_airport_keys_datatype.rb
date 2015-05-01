class ChangeFlightAirportKeysDatatype < ActiveRecord::Migration
  def change
    change_column :flights, :origin_airport_id, :integer
    change_column :flights, :destination_airport_id, :integer
  end
end
