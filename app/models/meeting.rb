class Meeting < ApplicationRecord
  belongs_to :recovery_community
  belongs_to :location
  belongs_to :join_info
end
