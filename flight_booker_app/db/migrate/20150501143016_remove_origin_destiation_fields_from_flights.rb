class RemoveOriginDestiationFieldsFromFlights < ActiveRecord::Migration
  def change
    remove_column :flights, :origin_airport_id
  end
end
