class Place < ApplicationRecord
  validates :city, :country, :presence => true

end
