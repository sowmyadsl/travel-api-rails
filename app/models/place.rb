class Place < ApplicationRecord
  validates :city, :country, :presence => true
  has_many :reviews
  scope :search_by_city, -> (city_parameter){ where("city like ?", "%#{city_parameter}%")}
end
