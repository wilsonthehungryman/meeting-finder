class AddNameToMeeting < ActiveRecord::Migration[8.0]
  def change
    add_column :meetings, :name, :string
  end
end
