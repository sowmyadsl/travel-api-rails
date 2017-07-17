class Place < ApplicationRecord
  validates :city, :country, :presence => true
  has_many :reviews
  #  scope :search, -> (query)
  scope :search_by_city, -> (city_parameter){ where("city like ?", "%#{city_parameter}%")}


  #  scope :search, -> (city){ where('city like ?', '%#{city}%')}

  #
  #OR "country like ?" "%#{query}%"
  # scope :search, -> (query) do
  #     Place.all.find_all do |place|
  #     place.city.match("#{query}") ||
  #     place.country.match("#{query}")
  #   end
  # end
  #

  # scope :search_by_country, -> (country_parameter){ where("country like ?", "%#{country_parameter}%")}
end
