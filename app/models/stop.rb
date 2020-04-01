class Stop < ApplicationRecord
  has_many :starred_stops
  has_many :stop_lines
  has_many :lines, through: :stop_lines
end
