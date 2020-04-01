class StopLineSerializer < ActiveModel::Serializer
  attributes :id
  has_one :stop
  has_one :line
end
