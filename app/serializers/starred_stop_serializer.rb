class StarredStopSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :stop
end
