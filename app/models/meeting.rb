class Meeting < ApplicationRecord
  belongs_to :recovery_community
  belongs_to :location, optional: true
  belongs_to :join_info, optional: true
end
