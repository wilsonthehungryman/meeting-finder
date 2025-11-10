class AddMeetingTypeToMeeting < ActiveRecord::Migration[8.0]
  def change
    add_column :meetings, :meeting_type, :string
  end
end
