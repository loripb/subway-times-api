class StarredStop < ApplicationRecord
  belongs_to :user
  belongs_to :stop
end
