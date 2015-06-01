class AddEmailToPassengers < ActiveRecord::Migration
  def change
    add_column :passengers, :email, :text
  end
end


