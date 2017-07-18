class Place < ApplicationRecord
  validates :city, :country, :presence => true
  has_many :reviews

  scope :search_by_city, -> (city_parameter){ where("city like ?", "%#{city_parameter}%")}
  scope :search_by_country, -> (country_parameter){ where("country like ?", "%#{country_parameter}%")}
  max_paginates_per 25
  paginates_per 25


end
