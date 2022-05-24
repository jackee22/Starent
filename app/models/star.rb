class Star < ApplicationRecord
  belongs_to :user
  list = %w[actor model athlete singer pornstar influencer youtuber]
  validates :name, presence: true
  validates :category, presence: true, inclusion: { in: list }
  validates :country, presence: true
  validates :city, presence: true
  validates :price, presence: true
end
