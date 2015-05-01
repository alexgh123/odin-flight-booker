class CorrectlyAddSecondForeignKeyToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :destination_airport_id, :integer
    add_index :flights, :destination_airport_id
  end
end
