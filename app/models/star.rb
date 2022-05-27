class Star < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  list = %w[actor model athlete musician pornstar influencer youtuber]
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: list }
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
