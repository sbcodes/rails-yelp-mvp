class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, :restaurant, presence: true
  validates :rating, comparison: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :rating, numericality: { only_integer: true }
end
