class Human < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :rate, numericality: {greater_than_or_equal_to: 1, less_than_or_equal_to: 10}
  validates :name, :description, :address, presence: true
  geocoded_by :address
  after_validation :geocode
end
