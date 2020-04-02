class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :starred_stops
  has_many :stops, through: :starred_stops
end
