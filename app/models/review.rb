class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 0, message: '%{value} is not between 0 and 5'}
end
