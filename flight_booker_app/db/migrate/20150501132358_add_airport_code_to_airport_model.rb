class AddAirportCodeToAirportModel < ActiveRecord::Migration
  def change
    add_column :airports, :airport_code, :string
    add_column :airports, :airport_name, :string
  end
end
