class AddRecurringToMeeting < ActiveRecord::Migration[8.0]
  def change
    add_column :meetings, :recurring, :boolean
  end
end
