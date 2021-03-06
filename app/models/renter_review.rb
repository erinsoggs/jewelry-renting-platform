class RenterReview < ApplicationRecord
  belongs_to :rental
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }, presence: true,
                     inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rental, presence: true
end
