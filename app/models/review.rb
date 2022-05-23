class Review < ApplicationRecord
  belongs_to :user
  belongs_to :star
  validates :content, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
