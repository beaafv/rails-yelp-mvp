class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  RATING = (0..5).to_a
  validates :rating, numericality: { only_integer: true }, inclusion: { in: RATING }
end
