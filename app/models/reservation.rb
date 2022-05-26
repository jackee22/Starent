class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :star
  validates :start_time, presence: true, uniqueness: true
  validates :end_time, presence: true, uniqueness: true
  # validates :start_time, comparison: { greater_than: :end_time }
end
