class User < ApplicationRecord
  has_many :starred_stops
  has_many :stops, through: :starred_stops

  validates :username, length: { in: 4..16 }, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }
  has_secure_password
end
