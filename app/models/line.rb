class Line < ApplicationRecord
  has_many :stop_lines
  has_many :stops, through: :stop_lines
end
