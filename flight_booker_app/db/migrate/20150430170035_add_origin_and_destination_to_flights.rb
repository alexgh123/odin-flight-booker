class AddOriginAndDestinationToFlights < ActiveRecord::Migration
  def change
    add_column :flights, :origin_code, :string
    add_column :flights, :destination_code, :string
  end
end
