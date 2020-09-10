class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :human
  has_many :reviews

end
