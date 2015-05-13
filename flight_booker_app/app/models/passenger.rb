class Passenger < ActiveRecord::Base


  has_many :tickets
  has_many :bookings, through: :tickets

   def as_json(options={})
        { :name => self.name }  # NOT including the email field
    end

      # Option 2: Working with the default #as_json method
      # def as_json(options={})
      #   super(:only => [:name])
      # end

      # def as_xml(options={})
      #   {:name => self.name}
      # end


end
