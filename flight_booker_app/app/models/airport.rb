class Airport < ActiveRecord::Base
  belongs_to :flights


def self.search(query)
  where("airport_name like ?", "%#{query}%")
end

end
