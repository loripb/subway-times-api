class User < ApplicationRecord
  has_many :starred_stops
  has_many :stops, through: :starred_stops

  validates :username, uniqueness: true
  has_secure_password
end
