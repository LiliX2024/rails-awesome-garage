class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true, length: { minimum: 5, too_short: "Must have at least 6 characters" }
  validates :rating, presence: true
end
