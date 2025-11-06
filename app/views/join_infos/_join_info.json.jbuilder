json.extract! join_info, :id, :link, :meeting_id, :meeting_provider, :password, :created_at, :updated_at
json.url join_info_url(join_info, format: :json)
