class RemoveDestinationFromFlights < ActiveRecord::Migration
  def change
    remove_column :flights, :destination_airport_id
  end
end
