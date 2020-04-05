class LineSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
end
