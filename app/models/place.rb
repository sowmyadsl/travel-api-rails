class Place < ApplicationRecord
  validates :city, :country, :presence => true
  has_many :reviews
end
