class CorrectlyAddForeignKeysToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :origin_airport_id, :integer
    add_index :flights, :origin_airport_id
  end
end

