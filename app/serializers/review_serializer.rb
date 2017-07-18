class ReviewSerializer < ActiveModel::Serializer
  attributes :place_id, :author, :content

  belongs_to :place
end
