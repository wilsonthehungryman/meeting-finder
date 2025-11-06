json.extract! meeting, :id, :source, :time, :type, :recovery_community_id, :location_id, :join_info_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
