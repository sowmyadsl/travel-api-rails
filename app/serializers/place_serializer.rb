class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :city, :country

  has_many :reviews
end
