class Item < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users
  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :price, presence: true
  # has_one_attached :photo
end
