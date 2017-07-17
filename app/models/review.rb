class Review < ApplicationRecord
  validates :author, :content, :presence => true
  belongs_to :place
end
