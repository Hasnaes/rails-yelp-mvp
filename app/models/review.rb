class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  # @restaurant = rating.[0..5]
  validates :rating, numericality: { only_integer: true }
  validates_inclusion_of :rating, in: 0..5
end
