class LineSerializer < ActiveModel::Serializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :stops, though: :stop_lines
end
