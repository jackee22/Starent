class Star < ApplicationRecord
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  list = %w[actor model athlete singer pornstar influencer youtuber]
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: list }
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true
end
