class ChangeAirportCodeInFlightModelToForeignKey < ActiveRecord::Migration
  def change
    rename_column :flights, :origin_code, :origin_airport_id
    rename_column :flights, :destination_code, :destination_airport_id
  end
end
