class StarredStop < ApplicationRecord
  belongs_to :user
  belongs_to :stop
  belongs_to :line
end
